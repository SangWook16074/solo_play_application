import 'package:flutter/material.dart';

class CustomTextField extends TextField {
  final String? hintText;
  final Widget? suffixIcon;
  CustomTextField(
      {super.key,
      this.hintText,
      super.obscureText,
      this.suffixIcon,
      super.onChanged})
      : super(
            decoration: InputDecoration(
                suffixIcon: suffixIcon,
                suffixIconColor: const Color(0xff838383),
                hintText: hintText,
                hintStyle: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffc3c3c3)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(width: 1.0, color: Color(0xff000000))),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 1.0, color: Color(0xffcacaca)),
                )));
}
