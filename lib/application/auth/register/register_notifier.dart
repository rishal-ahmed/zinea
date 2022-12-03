import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/auth/register/register_event.dart';
import 'package:zinea/application/auth/register/register_state.dart';
import 'package:zinea/infrastructure/auth/register/register_repository.dart';

class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier() : super(RegisterState.initial());

  RegisterState initialState = RegisterState.initial();

  void emit(RegisterEvent event) {
    event.map(
      //=-=-=-=-=-=-=-=-=-=- Register Event -=-=-=-=-=-=-=-=-=-=
      register: (eventRegister) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Register Api
        final result = await RegisterRepository().register(
          registerEvent: eventRegister,
        );

        final RegisterState registerState = result.fold(
          //=-=-=-=- Failure -=-=-=-=-=
          (failure) =>
              initialState.copyWith(isError: true, errorMessage: failure.error),
          //=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(status: true),
        );

        // Notify UI
        state = registerState;
      },
    );
  }
}
