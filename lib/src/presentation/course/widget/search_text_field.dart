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
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10.0,
                  color: const Color(0xff000000).withOpacity(0.3))
            ]),
        alignment: Alignment.center,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 11,
              ),
              suffixIcon: const Icon(
                Icons.search,
                size: 16,
              ),
              filled: true,
              fillColor: const Color(0xffffffff),
              hintText: hintLabel,
              hintStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              isDense: true),
        ));
  }
}
