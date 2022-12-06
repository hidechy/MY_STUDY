///
//  Generated code. Do not modify.
//  source: time_notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'time_notification.pb.dart' as $0;
export 'time_notification.pb.dart';

class TimeNotifierClient extends $grpc.Client {
  static final _$notifier = $grpc.ClientMethod<$0.TimeNotificationRequest,
          $0.TimeNotificationResponse>(
      '/time_notification.TimeNotifier/notifier',
      ($0.TimeNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.TimeNotificationResponse.fromBuffer(value));

  TimeNotifierClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TimeNotificationResponse> notifier(
      $0.TimeNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$notifier, request, options: options);
  }
}

abstract class TimeNotifierServiceBase extends $grpc.Service {
  $core.String get $name => 'time_notification.TimeNotifier';

  TimeNotifierServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TimeNotificationRequest,
            $0.TimeNotificationResponse>(
        'notifier',
        notifier_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.TimeNotificationRequest.fromBuffer(value),
        ($0.TimeNotificationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TimeNotificationResponse> notifier_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TimeNotificationRequest> request) async {
    return notifier(call, await request);
  }

  $async.Future<$0.TimeNotificationResponse> notifier(
      $grpc.ServiceCall call, $0.TimeNotificationRequest request);
}
