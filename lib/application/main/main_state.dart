import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  factory MainState({
    required int index,
    required bool isError,
  }) = _MainState;
  const MainState._();

  factory MainState.initial() => MainState(index: 0, isError: false);
}
