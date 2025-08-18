import 'package:flutter/material.dart';

class BookmarkIcon extends StatelessWidget {
  final void Function()? onTap;
  final bool isBookmarked;
  const BookmarkIcon({super.key, this.onTap, required this.isBookmarked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
      ),
    );
  }
}
