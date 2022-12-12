import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/password/password_notifier.dart';
import 'package:zinea/application/password/password_state.dart';

class PasswordProvider {
  //==--==--==--==--==-- Password --==--==--==--==--==
  static final passwordProvider =
      StateNotifierProvider.autoDispose<PasswordNotifier, PasswordState>((ref) {
    return PasswordNotifier();
  });

  //==--==--==--==--==-- From Key --==--==--==--==--==
  static final formKeyProvider =
      Provider.autoDispose<GlobalKey<FormState>>((ref) {
    return GlobalKey<FormState>();
  });

  //==--==--==--==--==-- From Data --==--==--==--==--==
  static final oldPasswordController =
      Provider.autoDispose<TextEditingController>((ref) {
    return TextEditingController();
  });
  static final newPasswordController =
      Provider.autoDispose<TextEditingController>((ref) {
    return TextEditingController();
  });
}
