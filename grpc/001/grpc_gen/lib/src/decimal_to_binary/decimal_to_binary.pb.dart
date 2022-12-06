///
//  Generated code. Do not modify.
//  source: decimal_to_binary.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConvertRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConvertRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'decimal_to_binary'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'decimal', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binary')
    ..hasRequiredFields = false
  ;

  ConvertRequest._() : super();
  factory ConvertRequest({
    $core.int? decimal,
    $core.String? binary,
  }) {
    final _result = create();
    if (decimal != null) {
      _result.decimal = decimal;
    }
    if (binary != null) {
      _result.binary = binary;
    }
    return _result;
  }
  factory ConvertRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConvertRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConvertRequest clone() => ConvertRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConvertRequest copyWith(void Function(ConvertRequest) updates) => super.copyWith((message) => updates(message as ConvertRequest)) as ConvertRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConvertRequest create() => ConvertRequest._();
  ConvertRequest createEmptyInstance() => create();
  static $pb.PbList<ConvertRequest> createRepeated() => $pb.PbList<ConvertRequest>();
  @$core.pragma('dart2js:noInline')
  static ConvertRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConvertRequest>(create);
  static ConvertRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get decimal => $_getIZ(0);
  @$pb.TagNumber(1)
  set decimal($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDecimal() => $_has(0);
  @$pb.TagNumber(1)
  void clearDecimal() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get binary => $_getSZ(1);
  @$pb.TagNumber(2)
  set binary($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBinary() => $_has(1);
  @$pb.TagNumber(2)
  void clearBinary() => clearField(2);
}

class ConvertResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConvertResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'decimal_to_binary'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isCorrect', protoName: 'isCorrect')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  ConvertResponse._() : super();
  factory ConvertResponse({
    $core.bool? isCorrect,
    $core.String? answer,
  }) {
    final _result = create();
    if (isCorrect != null) {
      _result.isCorrect = isCorrect;
    }
    if (answer != null) {
      _result.answer = answer;
    }
    return _result;
  }
  factory ConvertResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConvertResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConvertResponse clone() => ConvertResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConvertResponse copyWith(void Function(ConvertResponse) updates) => super.copyWith((message) => updates(message as ConvertResponse)) as ConvertResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConvertResponse create() => ConvertResponse._();
  ConvertResponse createEmptyInstance() => create();
  static $pb.PbList<ConvertResponse> createRepeated() => $pb.PbList<ConvertResponse>();
  @$core.pragma('dart2js:noInline')
  static ConvertResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConvertResponse>(create);
  static ConvertResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isCorrect => $_getBF(0);
  @$pb.TagNumber(1)
  set isCorrect($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsCorrect() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsCorrect() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get answer => $_getSZ(1);
  @$pb.TagNumber(2)
  set answer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnswer() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnswer() => clearField(2);
}

