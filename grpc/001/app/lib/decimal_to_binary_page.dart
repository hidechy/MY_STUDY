import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grpc/grpc.dart';

import 'package:grpc_gen/grpc_gen.dart';

import 'hello_world_page.dart';

//////////////////////////////////////////////////////////

/// 10進数を保持するProvider
final decimalProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

/// 2進数を保持するProvider
final binaryProvider = StateProvider.autoDispose<String>((ref) {
  return '';
});

//////////////////////////////////////////////////////////

/// 変換可能かどうかを判定するProvider
final convertibleProvider = Provider.autoDispose<bool>((ref) {
  final decimal = ref.watch(decimalProvider);
  final binary = ref.watch(binaryProvider);
  if (decimal.isEmpty || binary.isEmpty) {
    // 未入力の場合は不可
    return false;
  }

  final decimalNumber = int.tryParse(decimal);
  if (decimalNumber == null) {
    // 入力された10進数が数字でない場合は不可
    return false;
  }

  // それ以外の場合は可
  return true;
});

//////////////////////////////////////////////////////////

final convertProvider =
    StateNotifierProvider.autoDispose<ConvertNotifier, ConvertResponse?>((ref) {
  return ConvertNotifier(channel: ref.watch(channelProvider));
});

//////////////////////////////////////////////////////////

class ConvertNotifier extends StateNotifier<ConvertResponse?> {
  ConvertNotifier({
    required ClientChannel channel,
  })  : _channel = channel,
        super(null);

  final ClientChannel _channel;

  Future<void> check({required int decimal, required String binary}) async {
    // クライアント作成
    final client = ConverterClient(_channel);

    // サービス実行
    final response = await client.convert(
      ConvertRequest(decimal: decimal, binary: binary),
    );

    // レスポンスの状態を更新
    state = response;
  }

  void reset() {
    state = null;
  }
}

//////////////////////////////////////////////////////////

class DecimalToBinaryPage extends StatelessWidget {
  const DecimalToBinaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unary RPC')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('10進数'),
                        const SizedBox(height: 8),
                        Consumer(
                          builder: (context, ref, child) {
                            return TextField(
                              onChanged: (value) {
                                ref.read(convertProvider.notifier).reset();
                                ref
                                    .read(decimalProvider.notifier)
                                    .update((state) => value);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_right),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('2進数'),
                        const SizedBox(height: 8),
                        Consumer(
                          builder: (context, ref, child) {
                            return TextField(
                              onChanged: (value) {
                                ref.read(convertProvider.notifier).reset();
                                ref
                                    .read(binaryProvider.notifier)
                                    .update((state) => value);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    onPressed: ref.watch(convertibleProvider)
                        ? () {
                            ref.read(convertProvider.notifier).check(
                                  decimal:
                                      int.parse(ref.watch(decimalProvider)),
                                  binary: ref.watch(binaryProvider),
                                );
                          }
                        : null,
                    child: const Text('答え合わせ'),
                  );
                },
              ),
              const SizedBox(height: 32),
              Consumer(
                builder: (context, ref, child) {
                  final response = ref.watch(convertProvider);
                  if (response == null) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    children: [
                      Text(response.isCorrect ? '正解！' : '不正解！'),
                      Text('答え：${response.answer}'),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
