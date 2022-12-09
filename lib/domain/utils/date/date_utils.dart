import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';

class DateTimeUtils {
  //========== Singleton Instance ==========
  DateTimeUtils._internal();
  static DateTimeUtils instance = DateTimeUtils._internal();
  factory DateTimeUtils() {
    return instance;
  }

  //==================== Date Picker ====================
  Future<DateTime?> datePicker(BuildContext context,
      {final DateTime? initDate, final bool endDate = false}) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initDate ?? DateTime.now(),
      firstDate: DateTime(1998, 04, 14),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null && endDate) {
      final DateTime updated =
          selectedDate.add(const Duration(hours: 23, minutes: 59));
      return updated;
    } else {
      return selectedDate;
    }
  }

  //==================== Year Picker ====================
  Future<int?> yearPicker(BuildContext context,
      {String? title, int? startYear}) async {
    DateTime? firstDate = startYear != null ? DateTime(startYear) : null;
    DateTime? selectedDate;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title ?? "Select Year",
            style: const TextStyle(color: primaryColor),
          ),
          content: SizedBox(
              width: 50.w,
              height: 50.w,
              child: YearPicker(
                firstDate: firstDate ?? DateTime(DateTime.now().year - 100, 1),
                lastDate: DateTime.now(),
                initialDate: DateTime.now(),
                currentDate: DateTime.now(),
                onChanged: (DateTime dateTime) {
                  selectedDate = dateTime;
                  Navigator.pop(context);
                },
                selectedDate: DateTime.now(),
              )),
        );
      },
    );

    return selectedDate?.year;
  }
}
