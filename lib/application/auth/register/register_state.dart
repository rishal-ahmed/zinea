import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required bool isLoading,
    required bool isError,
    @Default('') String errorMessage,
    @Default(false) bool status,
  }) = _RegisterState;

  factory RegisterState.initial() =>
      const RegisterState(isLoading: false, isError: false);
}
