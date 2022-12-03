import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/search/search_event.dart';
import 'package:zinea/application/search/search_state.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/provider/search/search_provider.dart';
import 'package:zinea/domain/utils/debouncer/debouncer.dart';
import 'package:zinea/presentation/screens/search/widgets/search_idle.dart';
import 'package:zinea/presentation/screens/search/widgets/search_result.dart';

class ScreenSearch extends ConsumerWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                prefixInsets: const EdgeInsets.symmetric(horizontal: 5),
                suffixInsets: const EdgeInsets.symmetric(horizontal: 5),
                backgroundColor: Colors.grey.withOpacity(0.5),
                prefixIcon:
                    const Icon(CupertinoIcons.search, color: Colors.grey),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                    color: Colors.grey),
                style: const TextStyle(color: Colors.white),
                onChanged: (query) {
                  if (query.isEmpty || query.startsWith(' ')) {
                    Debouncer.timer?.cancel();
                    return ref
                        .read(SearchProvider.searchProvider.notifier)
                        .emit(const SearchEvent.initial());
                  }

                  final Debouncer debouncer = Debouncer();
                  debouncer.run(() {
                    ref
                        .read(SearchProvider.searchProvider.notifier)
                        .emit(SearchEvent.search(query: query));
                  });
                },
              ),
              dHeight1n5,
              Expanded(
                child: Consumer(
                  builder: (context, ref, _) {
                    final SearchState searchState =
                        ref.watch(SearchProvider.searchProvider);

                    if (searchState.isSearching) {
                      return const SearchResultWidget();
                    } else {
                      return const SearchIdleWidget();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
