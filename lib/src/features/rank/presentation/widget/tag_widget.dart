import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: const Color.fromRGBO(0, 0, 0, 0.05),
        border: Border.all(
          width: 0.5,
          style: BorderStyle.solid,
          color: const Color.fromRGBO(0, 0, 0, 0.10),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 4.0),
        child: Text(
          '#커피향 가득',
          style: TextStyle(
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
