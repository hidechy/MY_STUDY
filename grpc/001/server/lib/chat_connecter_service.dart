import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_gen/grpc_gen.dart';

class ChatConnecterService extends ChatConnecterServiceBase {
  final streamController = StreamController<List<Message>>.broadcast();

  final messages = <Message>[];

  @override
  Stream<ChatConnectResponse> connect(
      ServiceCall call, Stream<ChatConnectRequest> request) async* {
    // 現在のメッセージ一覧を設定
    streamController.add(messages);

    // 接続直後に現在のメッセージ一覧を送信
    yield ChatConnectResponse(messages: messages);

    request.listen(
      (event) {
        print('メッセージ: ${event.message}');
        messages.add(
          Message(
            message: event.message,
            unixTime: Int64(DateTime.now().millisecondsSinceEpoch),
          ),
        );
        streamController.add(messages);
      },
    );

    // Streamを返却
    yield* streamController.stream
        .map((messages) => ChatConnectResponse(messages: messages));
  }
}
