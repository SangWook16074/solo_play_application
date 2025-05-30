import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  final double width;
  final bool select;
  const CheckButton({super.key, this.width = 28, required this.select});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2.0,
              color:
                  select ? const Color(0xff266FF7) : const Color(0xffCACACA)),
          color: select ? const Color(0xff266FF7) : const Color(0xffffffff),
          shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Icon(
        Icons.check_rounded,
        color: select ? const Color(0xffffffff) : const Color(0xffCACACA),
        size: width - 10,
      ),
    );
  }
}
