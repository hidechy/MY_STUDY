///
//  Generated code. Do not modify.
//  source: word_count.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use wordCountRequestDescriptor instead')
const WordCountRequest$json = const {
  '1': 'WordCountRequest',
  '2': const [
    const {'1': 'word', '3': 1, '4': 1, '5': 9, '10': 'word'},
  ],
};

/// Descriptor for `WordCountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordCountRequestDescriptor = $convert.base64Decode('ChBXb3JkQ291bnRSZXF1ZXN0EhIKBHdvcmQYASABKAlSBHdvcmQ=');
@$core.Deprecated('Use wordCountResponseDescriptor instead')
const WordCountResponse$json = const {
  '1': 'WordCountResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `WordCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordCountResponseDescriptor = $convert.base64Decode('ChFXb3JkQ291bnRSZXNwb25zZRIUCgVjb3VudBgBIAEoBVIFY291bnQ=');
