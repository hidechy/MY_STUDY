///
//  Generated code. Do not modify.
//  source: decimal_to_binary.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use convertRequestDescriptor instead')
const ConvertRequest$json = const {
  '1': 'ConvertRequest',
  '2': const [
    const {'1': 'decimal', '3': 1, '4': 1, '5': 5, '10': 'decimal'},
    const {'1': 'binary', '3': 2, '4': 1, '5': 9, '10': 'binary'},
  ],
};

/// Descriptor for `ConvertRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertRequestDescriptor = $convert.base64Decode('Cg5Db252ZXJ0UmVxdWVzdBIYCgdkZWNpbWFsGAEgASgFUgdkZWNpbWFsEhYKBmJpbmFyeRgCIAEoCVIGYmluYXJ5');
@$core.Deprecated('Use convertResponseDescriptor instead')
const ConvertResponse$json = const {
  '1': 'ConvertResponse',
  '2': const [
    const {'1': 'isCorrect', '3': 1, '4': 1, '5': 8, '10': 'isCorrect'},
    const {'1': 'answer', '3': 2, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `ConvertResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertResponseDescriptor = $convert.base64Decode('Cg9Db252ZXJ0UmVzcG9uc2USHAoJaXNDb3JyZWN0GAEgASgIUglpc0NvcnJlY3QSFgoGYW5zd2VyGAIgASgJUgZhbnN3ZXI=');
