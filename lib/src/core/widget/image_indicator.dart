import 'package:flutter/material.dart';

class ImageIndicator extends StatelessWidget {
  final int length;
  final int currentIndex;

  const ImageIndicator({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          length,
          (index) {
            final isSelected = currentIndex == index;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: isSelected ? 18.0 : 5.0,
              height: 5.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: isSelected
                    ? const Color(0xff0070F0)
                    : const Color(0xffFFFFFF),
              ),
            );
          },
        ),
      ],
    );
  }
}
