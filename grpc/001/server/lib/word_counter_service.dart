import 'package:grpc/grpc.dart';
import 'package:grpc_gen/grpc_gen.dart';

class WordCounterService extends WordCounterServiceBase {
  final words = <String>[];

  @override
  Future<WordCountResponse> count(
    ServiceCall call,
    Stream<WordCountRequest> request,
  ) async {
    await for (final req in request) {
      // リクエストごとにリストに追加
      print('単語: ${req.word}');
      words.add(req.word);
    }

    // aから始まる単語をカウント
    final count = [...words.where((element) => element.startsWith('a'))].length;

    // リセット
    words.clear();

    // カウント数を返却
    return WordCountResponse(count: count);
  }
}
