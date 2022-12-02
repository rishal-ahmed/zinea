import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/auth/login/login_event.dart';
import 'package:zinea/application/auth/login/login_state.dart';
import 'package:zinea/infrastructure/auth/login/login_repository.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(LoginState.initial());

  final LoginState initialState = LoginState.initial();

  void emit(LoginEvent event) {
    event.map(
      //=-=-=-=-=-=-=-=-=-=- Login Event -=-=-=-=-=-=-=-=-=-=
      login: (eventLogin) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Login Api
        final result = await LoginRepository().login(
            username: eventLogin.username, password: eventLogin.password);

        final LoginState loginState = result.fold(
          //=-=-=-=- Failure -=-=-=-=-=
          (failure) =>
              initialState.copyWith(isError: true, errorMessage: failure.error),
          //=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(status: true),
        );

        // Notify UI
        state = loginState;
      },
    );
  }
}
