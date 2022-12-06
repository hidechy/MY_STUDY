///
//  Generated code. Do not modify.
//  source: decimal_to_binary.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'decimal_to_binary.pb.dart' as $0;
export 'decimal_to_binary.pb.dart';

class ConverterClient extends $grpc.Client {
  static final _$convert =
      $grpc.ClientMethod<$0.ConvertRequest, $0.ConvertResponse>(
          '/decimal_to_binary.Converter/Convert',
          ($0.ConvertRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConvertResponse.fromBuffer(value));

  ConverterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ConvertResponse> convert($0.ConvertRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$convert, request, options: options);
  }
}

abstract class ConverterServiceBase extends $grpc.Service {
  $core.String get $name => 'decimal_to_binary.Converter';

  ConverterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ConvertRequest, $0.ConvertResponse>(
        'Convert',
        convert_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConvertRequest.fromBuffer(value),
        ($0.ConvertResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ConvertResponse> convert_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ConvertRequest> request) async {
    return convert(call, await request);
  }

  $async.Future<$0.ConvertResponse> convert(
      $grpc.ServiceCall call, $0.ConvertRequest request);
}
