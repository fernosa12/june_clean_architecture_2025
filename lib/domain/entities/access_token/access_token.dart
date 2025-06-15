import 'package:freezed_annotation/freezed_annotation.dart';
part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
sealed class AccessToken with _$AccessToken {
  const AccessToken._();

  const factory AccessToken({
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}
