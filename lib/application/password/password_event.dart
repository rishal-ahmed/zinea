import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_event.freezed.dart';

@freezed
class PasswordEvent with _$PasswordEvent {
  const factory PasswordEvent.changePassword(
      {required String oldPassword,
      required String newpassword}) = _PasswordEventChange;
}
