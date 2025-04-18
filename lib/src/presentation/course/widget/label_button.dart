import 'package:flutter/material.dart';

enum Type { select, unselect }

class LabelButton extends StatelessWidget {
  final String label;
  final Type type;
  const LabelButton({super.key, required this.label, required this.type});

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 34,
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: const Color(0xff8DCCFF)),
          color: switch (type) {
            Type.select => const Color(0xff8DCCFF),
            _ => const Color(0xffffffff),
          },
          borderRadius: BorderRadius.circular(10.0)),
      child: Center(child: Text(label)),
    );
  }
}
