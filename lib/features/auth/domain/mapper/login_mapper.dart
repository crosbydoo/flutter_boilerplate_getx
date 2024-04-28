import 'package:equatable/equatable.dart';

class LoginMapper extends Equatable {
  final String token;

  const LoginMapper({
    required this.token,
  });

  @override
  List<Object?> get props => [token];
}
