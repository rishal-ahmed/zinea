import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/filter/filter_event.dart';
import 'package:zinea/application/filter/filter_notifier.dart';
import 'package:zinea/application/filter/filter_state.dart';

class FilterProvider {
  //=-=-=-=-=-=-=-=-=-=- Filter -=-=-=-=-=-=-=-=-=-=
  static final filterProvider = StateNotifierProvider.family
      .autoDispose<FilterNotifier, FilterState, String>((ref, contentId) {
    return FilterNotifier()
      ..emit(
        FilterEvent.filter(
          genre: ref.read(genreProvider),
          rating: ref.read(ratingProvider),
          releaseYearStart: ref.read(startYearProvider),
          releaseYearEnd: ref.read(endYearProvider),
          language: ref.read(languageProvider),
          contentId: contentId,
        ),
      );
  });

  //=-=-=-=-=-=-=-=-=-=- Filter Visibility -=-=-=-=-=-=-=-=-=-=
  static final visibleProvider =
      StateProvider.autoDispose<bool>((ref) => false);

  //=-=-=-=-=-=-=-=-=-=- TextEditing Controllers -=-=-=-=-=-=-=-=-=-=
  static final startDateProvider = Provider.autoDispose<TextEditingController>(
    (ref) => TextEditingController(),
  );
  static final endDateProvider = Provider.autoDispose<TextEditingController>(
    (ref) => TextEditingController(),
  );

  //=-=-=-=-=-=-=-=-=-=- Form Data -=-=-=-=-=-=-=-=-=-=
  static final genreProvider = StateProvider.autoDispose<String>((ref) {
    return "";
  });

  static final ratingProvider = StateProvider.autoDispose<String>((ref) {
    return '10.0';
  });

  static final startYearProvider = StateProvider.autoDispose<String>((ref) {
    return (DateTime.now().year - 200).toString();
  });

  static final endYearProvider = StateProvider.autoDispose<String>((ref) {
    return (DateTime.now().year).toString();
  });

  static final languageProvider = StateProvider.autoDispose<String>((ref) {
    return 'All';
  });
}
