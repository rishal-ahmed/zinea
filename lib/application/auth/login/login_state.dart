import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    required bool isError,
    @Default('') String errorMessage,
    @Default(false) bool status,
  }) = _LoginState;

  factory LoginState.initial() =>
      const LoginState(isLoading: false, isError: false);
}
