import 'package:flutter/material.dart';

import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';

class ShimmerChild extends StatelessWidget {
  const ShimmerChild({
    super.key,
    this.width = double.infinity,
    this.height = double.infinity,
    this.color = kWhite,
    this.heightFactor,
    this.widthFactor,
    this.seperator,
    this.count = 1,
  });

  final double height, width;
  final double? heightFactor, widthFactor;
  final int count;
  final Widget? seperator;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: Column(
        children: List.generate(
          count,
          (index) => Column(
            children: [
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              seperator ?? dHeight03,
            ],
          ),
        ),
      ),
    );
  }
}
