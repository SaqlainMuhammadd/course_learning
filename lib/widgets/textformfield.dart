import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  final double contentPadding;
  // final double borderRadius;
  final Color borderColor;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool? psdObs;
  final String? obscuringCharacter;
  final Widget? suffix;
  void Function()? onTap;
  void Function(String)? onChanged;
  final double? margin;
  // final String label;
  final Iterable<String>? autofillHints;
  final TapRegionCallback? onTapOutside;
  final TextInputAction? textInputAction;

  AppTextField(
      {super.key,
      required this.hint,
      required this.controller,
      this.suffix,
      this.onTap,
      this.onChanged,
      required this.borderColor,
      required this.focusBorderColor,
      // required this.label,
      // required this.borderRadius,
      this.obscuringCharacter,
      this.errorBorderColor = Colors.red,
      this.contentPadding = 10,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.psdObs,
      this.margin,
      this.autofillHints,
      this.onTapOutside,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      autofillHints: autofillHints,
      keyboardType: keyboardType,
      onChanged: onChanged,
      obscureText: psdObs ?? false,
      obscuringCharacter: obscuringCharacter ?? '•',
      decoration: InputDecoration(
        hintText: hint,

        hintStyle: const TextStyle(color: Color(0xffBBBBBC)),
        // label: Text(label),
        contentPadding: EdgeInsets.all(contentPadding),
        border: InputBorder.none,
        suffixIcon: suffix,
        filled: true,
        fillColor: Colors.grey.shade200,
        // suffixIconColor: onPrimary,
        enabledBorder: _outlineInputBorder(borderColor),
        focusedBorder: _outlineInputBorder(focusBorderColor),
        errorBorder: _outlineInputBorder(errorBorderColor),
        focusedErrorBorder: _outlineInputBorder(errorBorderColor),
      ),
      validator: validator,
      textInputAction: textInputAction,
      onTapOutside: onTapOutside ?? (_) => FocusScope.of(context).unfocus(),
    );
  }
}

OutlineInputBorder _outlineInputBorder(borderColor) {
  return OutlineInputBorder(borderSide: BorderSide(color: borderColor));
}
