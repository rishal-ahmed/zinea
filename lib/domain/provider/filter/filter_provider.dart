import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterProvider {
  //=-=-=-=-=-=-=-=-=-=- Filter Visibility -=-=-=-=-=-=-=-=-=-=
  static final visibleProvider =
      StateProvider.autoDispose<bool>((ref) => false);
}
