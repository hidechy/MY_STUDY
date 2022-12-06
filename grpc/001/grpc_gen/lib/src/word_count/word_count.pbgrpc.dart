///
//  Generated code. Do not modify.
//  source: word_count.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'word_count.pb.dart' as $0;
export 'word_count.pb.dart';

class WordCounterClient extends $grpc.Client {
  static final _$count =
      $grpc.ClientMethod<$0.WordCountRequest, $0.WordCountResponse>(
          '/word_count.WordCounter/count',
          ($0.WordCountRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.WordCountResponse.fromBuffer(value));

  WordCounterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.WordCountResponse> count(
      $async.Stream<$0.WordCountRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$count, request, options: options).single;
  }
}

abstract class WordCounterServiceBase extends $grpc.Service {
  $core.String get $name => 'word_count.WordCounter';

  WordCounterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.WordCountRequest, $0.WordCountResponse>(
        'count',
        count,
        true,
        false,
        ($core.List<$core.int> value) => $0.WordCountRequest.fromBuffer(value),
        ($0.WordCountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.WordCountResponse> count(
      $grpc.ServiceCall call, $async.Stream<$0.WordCountRequest> request);
}
