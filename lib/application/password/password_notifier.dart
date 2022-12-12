import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/password/password_event.dart';
import 'package:zinea/application/password/password_state.dart';
import 'package:zinea/infrastructure/user/user_repository.dart';

class PasswordNotifier extends StateNotifier<PasswordState> {
  PasswordNotifier() : super(const PasswordState());

  final PasswordState initialState = const PasswordState();

  void emit(PasswordEvent event) {
    event.map(
      //==--==--==--==-- Change Password --==--==--==--==--==
      changePassword: (eventPassword) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Api Change Password
        final result = await UserRepository().changePassword(
            oldPassword: eventPassword.oldPassword,
            newPassword: eventPassword.newpassword);

        final PasswordState passwordState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(isError: true,message: failure.error),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(status: data),
        );

        // Notify UI
        state = passwordState;
      },
    );
  }
}
