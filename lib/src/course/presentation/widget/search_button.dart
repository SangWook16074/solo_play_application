import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(11.65),
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.2),
              blurRadius: 6,
              blurStyle: BlurStyle.outer,
            )
          ]),
      child: const Icon(
        Icons.search,
        size: 17,
      ),
    );
  }
}
