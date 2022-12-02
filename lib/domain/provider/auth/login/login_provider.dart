import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/auth/login/login_notifier.dart';
import 'package:zinea/application/auth/login/login_state.dart';

class LoginProvider {
  //==--==--==--==--==-- Login --==--==--==--==--==
  static final loginProvider =
      StateNotifierProvider.autoDispose<LoginNotifier, LoginState>((ref) {
    return LoginNotifier();
  });

  //==--==--==--==--==-- Obscure --==--==--==--==--==
  static final obscureProvider = StateProvider.autoDispose<bool>((ref) => true);
}
