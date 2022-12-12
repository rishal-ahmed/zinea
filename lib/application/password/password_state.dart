import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_state.freezed.dart';

@freezed
class PasswordState with _$PasswordState {
  const factory PasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool status,
    @Default('') String message,
  }) = _PasswordState;
}
