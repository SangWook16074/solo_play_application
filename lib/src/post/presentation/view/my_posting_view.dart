import 'package:flutter/material.dart';

class MyPostingView extends StatelessWidget {
  const MyPostingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0,
          title: const Text(
            '나의 포스팅',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Column(),
    );
  }
}
