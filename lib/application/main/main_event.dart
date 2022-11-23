import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  //=-=-=-=-=- Main Event -=-=-=-=-=
  const factory MainEvent.navigate({required int index}) = _MainEventNavigate;
}
