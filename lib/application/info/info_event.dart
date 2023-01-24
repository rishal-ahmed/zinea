import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_event.freezed.dart';

@freezed
class InfoEvent with _$InfoEvent {
  //=-=-=-=-=- Info -=-=-=-=-=
  const factory InfoEvent.info({required String videoId}) = _InfoEvent;

  //=-=-=-=-=- Add Rating -=-=-=-=-=
  const factory InfoEvent.addRating(
      {required String videoId, required String rating}) = _InfoEventAddRating;

  //=-=-=-=-=- Get Rating -=-=-=-=-=
  const factory InfoEvent.getRating({required String videoId}) =
      _InfoEventGetRating;
}
