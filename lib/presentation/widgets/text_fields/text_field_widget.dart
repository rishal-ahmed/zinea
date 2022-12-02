import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({
    Key? key,
    this.labelText,
    this.hintText,
    this.textStyle,
    this.hintStyle,
    this.isHint = false,
    this.textInputType,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.textDirection,
    this.maxLines,
    this.couterText,
    this.controller,
    this.inputBorder,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.autovalidateMode,
    this.validator,
    this.errorStyle = true,
    this.focusNode,
    this.enabled,
    this.isDense,
    this.contentPadding,
    this.constraints,
    this.readOnly,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.obscureText,
    this.floatingLabelBehavior,
    this.fillColor,
    this.fontSize,
  }) : super(key: key);
  final String? labelText;
  final String? hintText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool isHint;
  final TextInputType? textInputType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final TextDirection? textDirection;
  final int? maxLines;
  final String? couterText;
  final InputBorder? inputBorder;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final bool? enabled;
  final bool? readOnly;
  final bool? isDense;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final Function()? onTap;
  final BoxConstraints? constraints;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final EdgeInsetsGeometry? contentPadding;
  final bool? obscureText;
  final bool errorStyle;
  final Color? fillColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: textStyle ??
          TextUtils.theme(context)
              .labelLarge
              ?.copyWith(fontSize: fontSize, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
          floatingLabelBehavior: floatingLabelBehavior,
          counterText: couterText,
          labelText: isHint ? null : labelText,
          border: inputBorder ?? InputBorder.none,
          disabledBorder: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          focusedErrorBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          labelStyle: const TextStyle(color: klabelColorGrey),
          fillColor: fillColor ?? secondaryColor,
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixIconConstraints: suffixIconConstraints,
          hintText: isHint ? labelText : hintText,
          hintStyle: hintStyle ?? TextStyle(fontSize: 15.sp, color: kColorHint),
          isDense: isDense,
          errorStyle: errorStyle
              ? const TextStyle(color: Colors.white70)
              : const TextStyle(fontSize: 0.01),
          constraints: constraints,
          contentPadding: contentPadding),
      keyboardType: textInputType ?? TextInputType.text,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      textDirection: textDirection ?? TextDirection.ltr,
      maxLines: maxLines ?? 1,
      autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
      validator: validator,
      focusNode: focusNode,
      enabled: enabled ?? true,
      readOnly: readOnly ?? false,
      onSaved: onSaved,
      onChanged: onChanged,
      onTap: onTap,
      obscureText: obscureText ?? false,
    );
  }
}
