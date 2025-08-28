import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  final Function() onTap;
  final String image;
  final String text;
  const ActionButtonWidget(
      {super.key,
      required this.onTap,
      required this.image,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              const SizedBox(width: 4),
              Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
