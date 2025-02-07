import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RecommendModalSheet extends StatefulWidget {
  const RecommendModalSheet({super.key});

  @override
  State<RecommendModalSheet> createState() => _RecommendModalSheetState();
}

class _RecommendModalSheetState extends State<RecommendModalSheet> {
  late final DraggableScrollableController _controller;

  final double minHeight = 0.09;
  final double maxHeight = 0.9;

  final GlobalKey _sheet = GlobalKey();

  DraggableScrollableSheet get sheet =>
      (_sheet.currentWidget as DraggableScrollableSheet);

  double currSize = 0.3;

  @override
  void initState() {
    _controller = DraggableScrollableController();
    super.initState();
  }

  void _sheetAnimation(double size) {
    _controller.animateTo(size,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void changeHeight(DragUpdateDetails details) {
    final move = details.localPosition.dy;
    print("move : $move");
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: _controller,
      initialChildSize: 0.3,
      minChildSize: 0.1,
      maxChildSize: 0.9,
      snap: true,
      snapSizes: const [
        0.3,
        0.9,
      ],
      builder: (context, scrollController) => Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0))),
        child: Column(
          children: [
            _dragHandle(),
            _items(scrollController),
          ],
        ),
      ),
    );
  }

  Widget _dragHandle() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          width: 60,
          height: 4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xffcacaca)),
        ),
      );

  Widget _items(ScrollController scrollController) => Expanded(
        child: SingleChildScrollView(
            controller: scrollController,
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: List.generate(20, (index) => const RecommendItemRow()),
            )),
      );
}

class RecommendItemRow extends StatelessWidget {
  const RecommendItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header(),
        _images(),
      ],
    );
  }

  Widget _header() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "베레프트",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "영업중 서울, 강서구",
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                )
              ],
            ),
            Spacer(),
            Icon(Icons.bookmark_outline)
          ],
        ),
      );

  Widget _images() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            ...List.generate(
              20,
              (index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.5),
                child: RecommendItemImage(),
              ),
            ),
            const SizedBox(
              width: 16,
            )
          ],
        ),
      );
}

class RecommendItemImage extends StatelessWidget {
  const RecommendItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
    );
  }
}
