import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/debouncer/debouncer.dart';
import 'package:zinea/presentation/screens/search/widgets/search_idle_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                  }

                  final Debouncer debouncer = Debouncer();
                  debouncer.run(() {});
                },
              ),
              kHeight10,
              Expanded(
                child: Consumer(
                  builder: (context, ref, _) {
                    return const SearchIdleWidget();

                    // if (!state.isSearching) {
                    //   return const SearchIdleWidget();
                    // } else {
                    //   return const SearchResultWidget();
                    // }
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
