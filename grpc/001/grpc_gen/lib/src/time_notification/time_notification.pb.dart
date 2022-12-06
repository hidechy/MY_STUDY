///
//  Generated code. Do not modify.
//  source: time_notification.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TimeNotificationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeNotificationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'time_notification'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TimeNotificationRequest._() : super();
  factory TimeNotificationRequest({
    $core.int? interval,
  }) {
    final _result = create();
    if (interval != null) {
      _result.interval = interval;
    }
    return _result;
  }
  factory TimeNotificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeNotificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeNotificationRequest clone() => TimeNotificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeNotificationRequest copyWith(void Function(TimeNotificationRequest) updates) => super.copyWith((message) => updates(message as TimeNotificationRequest)) as TimeNotificationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeNotificationRequest create() => TimeNotificationRequest._();
  TimeNotificationRequest createEmptyInstance() => create();
  static $pb.PbList<TimeNotificationRequest> createRepeated() => $pb.PbList<TimeNotificationRequest>();
  @$core.pragma('dart2js:noInline')
  static TimeNotificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeNotificationRequest>(create);
  static TimeNotificationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get interval => $_getIZ(0);
  @$pb.TagNumber(1)
  set interval($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInterval() => $_has(0);
  @$pb.TagNumber(1)
  void clearInterval() => clearField(1);
}

class TimeNotificationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimeNotificationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'time_notification'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unixTime', protoName: 'unixTime')
    ..hasRequiredFields = false
  ;

  TimeNotificationResponse._() : super();
  factory TimeNotificationResponse({
    $core.String? unixTime,
  }) {
    final _result = create();
    if (unixTime != null) {
      _result.unixTime = unixTime;
    }
    return _result;
  }
  factory TimeNotificationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeNotificationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeNotificationResponse clone() => TimeNotificationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeNotificationResponse copyWith(void Function(TimeNotificationResponse) updates) => super.copyWith((message) => updates(message as TimeNotificationResponse)) as TimeNotificationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimeNotificationResponse create() => TimeNotificationResponse._();
  TimeNotificationResponse createEmptyInstance() => create();
  static $pb.PbList<TimeNotificationResponse> createRepeated() => $pb.PbList<TimeNotificationResponse>();
  @$core.pragma('dart2js:noInline')
  static TimeNotificationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeNotificationResponse>(create);
  static TimeNotificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get unixTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set unixTime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUnixTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearUnixTime() => clearField(1);
}

