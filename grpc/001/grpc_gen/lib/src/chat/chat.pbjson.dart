///
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use chatConnectRequestDescriptor instead')
const ChatConnectRequest$json = const {
  '1': 'ChatConnectRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ChatConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatConnectRequestDescriptor = $convert.base64Decode('ChJDaGF0Q29ubmVjdFJlcXVlc3QSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use chatConnectResponseDescriptor instead')
const ChatConnectResponse$json = const {
  '1': 'ChatConnectResponse',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.chat.Message', '10': 'messages'},
  ],
};

/// Descriptor for `ChatConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatConnectResponseDescriptor = $convert.base64Decode('ChNDaGF0Q29ubmVjdFJlc3BvbnNlEikKCG1lc3NhZ2VzGAEgAygLMg0uY2hhdC5NZXNzYWdlUghtZXNzYWdlcw==');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'unixTime', '3': 2, '4': 1, '5': 3, '10': 'unixTime'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USGgoIdW5peFRpbWUYAiABKANSCHVuaXhUaW1l');
