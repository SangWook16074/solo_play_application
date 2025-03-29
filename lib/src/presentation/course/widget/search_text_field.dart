import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintLabel;
  const SearchTextField({super.key, this.controller, this.hintLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.outer,
                  blurRadius: 6.0,
                  color: const Color(0xff000000).withOpacity(0.3))
            ]),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hintLabel!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Icon(Icons.search)
          ],
        ));
  }
}
