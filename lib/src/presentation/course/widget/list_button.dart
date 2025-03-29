import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool isSelected;
  const ListButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected ? Colors.white : const Color(0xfff8f8f8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
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
    );
  }
}
