import 'package:flutter/material.dart';

class RankNumberWidget extends StatelessWidget {
  final int rank;

  const RankNumberWidget({super.key, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xffEDF5FF),
      ),
      child: Text(
        textAlign: TextAlign.center,
        '$rank',
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: Color(0xff0072FF),
        ),
      ),
    );
  }
}
