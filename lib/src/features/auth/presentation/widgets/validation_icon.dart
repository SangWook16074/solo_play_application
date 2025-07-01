import 'package:flutter/material.dart';

class ValidationIcon extends StatelessWidget {
  final bool isValidate;
  const ValidationIcon({super.key, required this.isValidate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              isValidate ? const Color(0xff008C15) : const Color(0xffff0000)),
      alignment: Alignment.center,
      child: isValidate
          ? const Icon(
              Icons.check,
              color: Color(0xffffffff),
              size: 15,
            )
          : const Icon(
              Icons.close,
              color: Color(0xffffffff),
              size: 15,
            ),
    );
  }
}
