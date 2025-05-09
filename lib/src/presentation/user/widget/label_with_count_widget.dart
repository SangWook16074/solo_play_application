import 'package:flutter/material.dart';

class LabelWithCountWidget extends StatelessWidget {
  final int count;
  final String label;
  const LabelWithCountWidget(
      {super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count.toString(), style: const TextStyle(fontSize: 24)),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
