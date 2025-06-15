// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccessToken {

@JsonKey(name: 'access_token') String get accessToken;
/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessTokenCopyWith<AccessToken> get copyWith => _$AccessTokenCopyWithImpl<AccessToken>(this as AccessToken, _$identity);

  /// Serializes this AccessToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessToken&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken);

@override
String toString() {
  return 'AccessToken(accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $AccessTokenCopyWith<$Res>  {
  factory $AccessTokenCopyWith(AccessToken value, $Res Function(AccessToken) _then) = _$AccessTokenCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken
});




}
/// @nodoc
class _$AccessTokenCopyWithImpl<$Res>
    implements $AccessTokenCopyWith<$Res> {
  _$AccessTokenCopyWithImpl(this._self, this._then);

  final AccessToken _self;
  final $Res Function(AccessToken) _then;

/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessToken extends AccessToken {
  const _AccessToken({@JsonKey(name: 'access_token') required this.accessToken}): super._();
  factory _AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);

@override@JsonKey(name: 'access_token') final  String accessToken;

/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessTokenCopyWith<_AccessToken> get copyWith => __$AccessTokenCopyWithImpl<_AccessToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessTokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessToken&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken);

@override
String toString() {
  return 'AccessToken(accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$AccessTokenCopyWith<$Res> implements $AccessTokenCopyWith<$Res> {
  factory _$AccessTokenCopyWith(_AccessToken value, $Res Function(_AccessToken) _then) = __$AccessTokenCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken
});




}
/// @nodoc
class __$AccessTokenCopyWithImpl<$Res>
    implements _$AccessTokenCopyWith<$Res> {
  __$AccessTokenCopyWithImpl(this._self, this._then);

  final _AccessToken _self;
  final $Res Function(_AccessToken) _then;

/// Create a copy of AccessToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,}) {
  return _then(_AccessToken(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
