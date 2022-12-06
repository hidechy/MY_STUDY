import 'package:grpc/grpc.dart';
import 'package:grpc_gen/grpc_gen.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    // サーバー側で名前を追加して返却
    return HelloReply()..message = 'Hello, ${request.name}!';
  }
}
