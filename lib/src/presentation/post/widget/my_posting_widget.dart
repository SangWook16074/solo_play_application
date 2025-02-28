import 'package:flutter/material.dart';
import 'package:solo_play_application/src/core/style/theme_color.dart';

class MyPostingWidget extends StatelessWidget {
  const MyPostingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: 135,
                height: 200,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeColor.basicGrey,
                ),
              ),
              Positioned(
                left: 2,
                bottom: 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 25,
                bottom: 4,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    '너구리',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
