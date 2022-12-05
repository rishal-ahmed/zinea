import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_event.freezed.dart';

@freezed
class InfoEvent with _$InfoEvent {
  //=-=-=-=-=- Info Event -=-=-=-=-=
  const factory InfoEvent.info({required String videoId}) = _InfoEvent;
}
