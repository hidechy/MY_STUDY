import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:grpc_gen/grpc_gen.dart';

import 'hello_world_page.dart';

//////////////////////////////////////////////////////////

/// メッセージを流すStreamを管理するController
final messageStreamControllerProvider =
    Provider.autoDispose<StreamController<String>>((ref) {
  final controller = StreamController<String>();
  ref.onDispose(controller.close);
  return controller;
});

//////////////////////////////////////////////////////////

/// 取得したメッセージ一覧
final messagesProvider =
    StreamProvider.autoDispose<List<Message>>((ref) async* {
  // サーバーへアクセスするためのチャンネルを取得
  final channel = ref.watch(channelProvider);

  final streamController = ref.watch(messageStreamControllerProvider);

  // クライアント作成
  final client = ChatConnecterClient(channel);

  // ResponseStreamを取得
  final responseStream = client.connect(streamController.stream
      .map((message) => ChatConnectRequest(message: message)));

  await for (final response in responseStream) {
    // Streamが流れるごとにメッセージ一覧を返却
    yield response.messages;
  }
});

//////////////////////////////////////////////////////////

class ChatPage extends HookWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Bidirectional streaming RPC')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Expanded(
                child: Consumer(builder: (context, ref, child) {
                  final messages =
                      ref.watch(messagesProvider).valueOrNull ?? [];
                  return ListView.separated(
                    itemBuilder: ((context, index) {
                      final message = messages[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(child: Text('匿名さん')),
                              Text(
                                '${DateTime.fromMillisecondsSinceEpoch(message.unixTime.toInt())}',
                              ),
                            ],
                          ),
                          Text(message.message),
                        ],
                      );
                    }),
                    separatorBuilder: ((context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Divider(),
                      );
                    }),
                    itemCount: messages.length,
                  );
                }),
              ),
              const Divider(
                color: Colors.blue,
              ),
              Consumer(
                builder: (context, ref, child) {
                  return Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: textController,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ref
                              .read(messageStreamControllerProvider)
                              .add(textController.text);
                          textController.clear();
                        },
                        child: const Text('送信'),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
