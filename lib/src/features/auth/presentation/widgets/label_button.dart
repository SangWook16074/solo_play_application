import 'package:flutter/cupertino.dart';

class LabelButton extends GestureDetector {
  final String label;

  LabelButton({super.key, super.onTap, required this.label})
      : super(
            child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff8e8e8e),
          ),
        ));
}
