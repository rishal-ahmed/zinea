import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  //=-=-=-=-=- Initial Event -=-=-=-=-=
  const factory SearchEvent.initial() = _SearchEventInitial;

  //=-=-=-=-=- Top Search Event -=-=-=-=-=
  const factory SearchEvent.topSearches() = _SearchEventTopSearches;

  //=-=-=-=-=- Search Event -=-=-=-=-=
  const factory SearchEvent.search({required String query}) = _SearchEvent;
}
