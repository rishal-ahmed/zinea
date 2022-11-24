import 'package:flutter/material.dart';
import 'package:zinea/core/constants/colors.dart';

class SearchResultItemWidget extends StatelessWidget {
  const SearchResultItemWidget({Key? key, required this.imageUrl})
      : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return imageUrl != null
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w1280/1X4h40fcB4WWUmIBK0auT4zRBAV.jpg')),
            ),
          )
        : const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.hide_image_outlined, color: kWhite),
          );
  }
}
