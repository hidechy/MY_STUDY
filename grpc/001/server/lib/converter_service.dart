import 'package:grpc/grpc.dart';
import 'package:grpc_gen/grpc_gen.dart';

class ConverterService extends ConverterServiceBase {
  @override
  Future<ConvertResponse> convert(
    ServiceCall call,
    ConvertRequest request,
  ) async {
    // 2進数に変換
    final result = request.decimal.toRadixString(2);

    return ConvertResponse(
      isCorrect: result == request.binary,
      answer: result,
    );
  }
}
