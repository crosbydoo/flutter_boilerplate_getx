import 'package:boilerplate_getx/features/auth/domain/mapper/login_mapper.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends LoginMapper {
  const LoginResponse({
    required super.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
