import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_event.freezed.dart';

@freezed
class FilterEvent with _$FilterEvent {
  //==--==--==--==-- Filter --==--==--==--==
  const factory FilterEvent.filter({
    required String genre,
    required String rating,
    required String releaseYearStart,
    required String releaseYearEnd,
    required String language,
    required String contentId,
  }) = _FilterEvent;
}
