import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:grpc_gen/grpc_gen.dart';

import 'hello_world_page.dart';

//////////////////////////////////////////////////////////

/// 入力した単語をStreamで保持するためのController
final wordStreamControllerProvider =
    StateProvider.autoDispose<StreamController<String>?>((ref) {
  return;
});

//////////////////////////////////////////////////////////

/// 単語の数を取得するProvider
final wordCountProvider = FutureProvider.autoDispose<int?>((ref) async {
  // サーバーへアクセスするためのチャンネルを取得
  final channel = ref.watch(channelProvider);

  final streamController = ref.watch(wordStreamControllerProvider);
  if (streamController == null) {
    return null;
  }

  // 5秒後にStreamの終了を通知
  Future.delayed(const Duration(seconds: 5)).then(
    (_) => streamController.close(),
  );

  // クライアント作成
  final client = WordCounterClient(channel);

  final response = await client.count(
    streamController.stream.map(
      (word) => WordCountRequest(word: word),
    ),
  );

  return response.count;
});

//////////////////////////////////////////////////////////

class WordCountPage extends HookWidget {
  const WordCountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Client streaming RPC')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final count = ref.watch(wordCountProvider).valueOrNull;
                    if (count == null) {
                      return const SizedBox.shrink();
                    }
                    return Text('結果: $count個');
                  },
                ),
                const SizedBox(height: 32),
                Consumer(
                  builder: (context, ref, child) {
                    final streamController =
                        ref.watch(wordStreamControllerProvider);

                    if (streamController == null) {
                      return ElevatedButton(
                        onPressed: () {
                          ref
                              .read(wordStreamControllerProvider.notifier)
                              .update((state) => StreamController());
                        },
                        child: const Text('開始！'),
                      );
                    }

                    final count = ref.watch(wordCountProvider).valueOrNull;

                    if (count != null) {
                      return ElevatedButton(
                        onPressed: () {
                          textController.clear();
                          ref
                              .read(wordStreamControllerProvider.notifier)
                              .update((state) => null);
                        },
                        child: const Text('もう一度！'),
                      );
                    }

                    return TextField(
                      controller: textController,
                      onEditingComplete: () {
                        ref
                            .read(wordStreamControllerProvider)
                            ?.add(textController.text);
                        textController.clear();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
