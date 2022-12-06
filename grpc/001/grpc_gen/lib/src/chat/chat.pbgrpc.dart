///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chat.pb.dart' as $0;
export 'chat.pb.dart';

class ChatConnecterClient extends $grpc.Client {
  static final _$connect =
      $grpc.ClientMethod<$0.ChatConnectRequest, $0.ChatConnectResponse>(
          '/chat.ChatConnecter/connect',
          ($0.ChatConnectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChatConnectResponse.fromBuffer(value));

  ChatConnecterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ChatConnectResponse> connect(
      $async.Stream<$0.ChatConnectRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connect, request, options: options);
  }
}

abstract class ChatConnecterServiceBase extends $grpc.Service {
  $core.String get $name => 'chat.ChatConnecter';

  ChatConnecterServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ChatConnectRequest, $0.ChatConnectResponse>(
            'connect',
            connect,
            true,
            true,
            ($core.List<$core.int> value) =>
                $0.ChatConnectRequest.fromBuffer(value),
            ($0.ChatConnectResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ChatConnectResponse> connect(
      $grpc.ServiceCall call, $async.Stream<$0.ChatConnectRequest> request);
}
