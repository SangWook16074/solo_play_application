import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String? label;
  final TextStyle? labelStyle;
  final String? hintText;
  const AuthTextField({super.key, this.hintText, this.label, this.labelStyle})
      : assert(label != null || labelStyle == null,
            "labelStyle을 지정하려면 반드시 label도 지정해야 합니다!");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label ?? "",
            style: labelStyle,
          ),
        SizedBox(
          height: 16,
        ),
        TextField(
            decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 1.0, color: Color(0xff000000)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:
                      const BorderSide(width: 1.0, color: Color(0xffcacaca)),
                ))),
      ],
    );
  }
}
