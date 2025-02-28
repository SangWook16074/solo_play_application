import 'package:flutter/material.dart';

class RegionLabel extends Container {
  final String label;
  final Color borderColor;
  RegionLabel({super.key, required this.label, required this.borderColor})
      : super(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: borderColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ));
}
