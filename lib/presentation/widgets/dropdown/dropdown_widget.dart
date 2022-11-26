import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
    required this.value,
    required this.items,
    this.onChanged,
    this.width,
    this.isExpanded = true,
  });

  final dynamic value;
  final List<dynamic> items;
  final Function(dynamic)? onChanged;
  final double? width;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: DropdownButtonFormField<dynamic>(
        isExpanded: isExpanded,
        isDense: true,
        value: value,
        // style: TextStyle(fontSize: 10.sp),
        decoration: InputDecoration(
          fillColor: kBlack,
          filled: true,
          constraints: const BoxConstraints(
            maxHeight: 40,
            minHeight: 40,
            minWidth: 40,
            maxWidth: 40,
          ),
          // contentPadding:
          //     const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          border: UnderlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(4),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(4),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(4),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        icon: Icon(
          Icons.keyboard_arrow_down,
          size: 16.sp,
          color: primaryColor,
        ),
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<dynamic>>((dynamic value) {
          return DropdownMenuItem(
            alignment: Alignment.centerLeft,
            value: value,
            child: Text(
              value.toString(),
              style: TextStyle(
                fontSize: 15.sp,
                color: primaryColor,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
