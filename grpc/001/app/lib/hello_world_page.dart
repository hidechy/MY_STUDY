import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:grpc_gen/grpc_gen.dart';

//////////////////////////////////////////////////////////

/// サーバーへアクセスするためのチャンネル
final channelProvider = Provider.autoDispose<ClientChannel>((ref) {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(
      // ローカルなのでTLSを無効化
      credentials: ChannelCredentials.insecure(),
    ),
  );

  ref.onDispose(() {
    // チャンネルが利用されなくなったら破棄
    channel.shutdown();
  });

  return channel;
});

//////////////////////////////////////////////////////////

/// 入力文字列
final nameProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

//////////////////////////////////////////////////////////

/// サーバーから取得した挨拶
final greeterProvider = FutureProvider.autoDispose<String>((ref) async {
  // サーバーへアクセスするためのチャンネルを取得
  final channel = ref.watch(channelProvider);

  // 入力された名前を取得
  final name = ref.watch(nameProvider);
  if (name.isEmpty) {
    return '';
  }

  // クライアント作成
  final client = GreeterClient(channel);

  // サービス実行
  final response = await client.sayHello(
    HelloRequest(name: name),
    options: CallOptions(compression: const GzipCodec()),
  );

  // レスポンスの中からメッセージを取り出して返却
  return response.message;
});

//////////////////////////////////////////////////////////

class HelloWorldPage extends HookWidget {
  const HelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Hello, world!')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            // 挨拶
            Consumer(
              builder: (context, ref, child) {
                // 取得した結果を設定
                final greet = ref.watch(greeterProvider).valueOrNull ?? '';
                return Text(greet);
              },
            ),
            const SizedBox(height: 32),
            // 入力欄
            Consumer(
              builder: (context, ref, child) {
                return TextFormField(
                  controller: textController,
                  onEditingComplete: () {
                    // 入力完了時に入力文字列の状態を更新
                    ref
                        .read(nameProvider.notifier)
                        .update((state) => textController.text);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
