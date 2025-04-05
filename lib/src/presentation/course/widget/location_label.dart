import 'package:flutter/material.dart';

class LocationLabel extends StatelessWidget {
  const LocationLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: const Center(
            child: Text(
              '서울시 > 동대문구',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
