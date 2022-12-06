import 'package:grpc/grpc.dart';

import 'package:server/greeter_service.dart';

import 'package:server/converter_service.dart';

import 'package:server/word_counter_service.dart';

//
import 'package:server/chat_connecter_service.dart';
//

Future<void> main(List<String> args) async {
  final server = Server(
    [
      GreeterService(),
      ConverterService(),

      WordCounterService(),
      //
      ChatConnecterService(),
      //
    ],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );

  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}
