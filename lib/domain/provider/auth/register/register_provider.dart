import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/auth/register/register_notifier.dart';
import 'package:zinea/application/auth/register/register_state.dart';

class RegisterProvider {
  //==--==--==--==--==-- Register --==--==--==--==--==
  static final registerProvider =
      StateNotifierProvider.autoDispose<RegisterNotifier, RegisterState>((ref) {
    return RegisterNotifier();
  });

  //==--==--==--==--==-- Obscure --==--==--==--==--==
  static final obscureProvider = StateProvider.autoDispose<bool>((ref) => true);
  static final obscureConfirmProvider =
      StateProvider.autoDispose<bool>((ref) => true);
}
