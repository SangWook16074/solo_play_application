import 'package:flutter/material.dart';

class UserPostingGridView extends StatelessWidget {
  const UserPostingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
        itemCount: 50,
        itemBuilder: (context, index) => Container(
              color: Colors.blue,
            ));
  }
}
