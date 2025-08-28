import 'package:flutter/material.dart';

class PrimaryTextField extends TextField {
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  PrimaryTextField({
    super.key,
    this.hintText,
    this.hintStyle,
    super.onChanged,
    super.obscureText,
    this.suffixIcon,
  }) : super(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: hintStyle,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 1.0, color: Color(0xff000000)),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(width: 1.0, color: Color(0xffcacaca))),
                suffixIcon: suffixIcon));
}
