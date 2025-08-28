import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool isSelected;
  final Color color;
  const ListButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? const Color(0xfff791a9) : Colors.black,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
