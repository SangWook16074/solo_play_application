import 'package:flutter/material.dart';

class PrimaryTextField extends TextField {
  final String? hintText;
  PrimaryTextField({super.key, this.hintText})
      : super(
            decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 1.0, color: Color(0xff000000)),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                        width: 1.0, color: Color(0xffcacaca)))));
}
