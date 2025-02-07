import 'dart:ui';

import 'package:flutter/material.dart';

class RecommendView extends StatefulWidget {
  final String title;
  final bool isShow;
  final TextStyle? titleStyle;
  const RecommendView(
      {super.key, required this.title, this.titleStyle, required this.isShow});

  @override
  State<RecommendView> createState() => _RecommendViewState();
}

class _RecommendViewState extends State<RecommendView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RecommendView oldWidget) {
    if (oldWidget.isShow && !widget.isShow) {
      _controller.forward();
    } else if (!oldWidget.isShow && widget.isShow) {
      _controller.reverse();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -_controller.value * 240),
          child: AnimatedOpacity(
            opacity: (widget.isShow) ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  color: Colors.white.withOpacity(0.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _header(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _items(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _header() => Padding(
        key: const Key("recommend view header"),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Text(
              widget.title,
              style: widget.titleStyle ??
                  const TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      );

  Widget _items() => SingleChildScrollView(
        key: const Key("recommend view items"),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(
              width: 16.0,
            ),
            ...List.generate(
                20,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: RecommendItemWidget(title: "item ${index + 1}"),
                    ))
          ],
        ),
      );
}

class RecommendItemWidget extends StatefulWidget {
  final String title;
  final double width;
  final double height;
  const RecommendItemWidget(
      {super.key, required this.title, this.width = 135, this.height = 109});

  @override
  State<RecommendItemWidget> createState() => _RecommendItemWidgetState();
}

class _RecommendItemWidgetState extends State<RecommendItemWidget> {
  bool isTaped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        key: const Key("recommend-item"),
        onTapDown: (details) {
          setState(() {
            isTaped = true;
          });
        },
        onTapUp: (details) {
          setState(() {
            isTaped = false;
          });
        },
        onTapCancel: () {
          setState(() {
            isTaped = false;
          });
        },
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: (isTaped) ? _selectedItem() : _unSelectedItem(),
        ));
  }

  Widget _selectedItem() => Container(
      key: const Key("select-recommend-item"),
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          color: const Color(0xffaaaaaa),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff00AFB9),
              Color(0xff1D4799),
            ],
          ),
          borderRadius: BorderRadius.circular(10.0)),
      child: _basicItem());

  Widget _unSelectedItem() => Padding(
        key: const Key("unselect-recommemd-item"),
        padding: const EdgeInsets.all(2.0),
        child: _basicItem(),
      );

  Widget _basicItem() => ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          // margin: const EdgeInsets.all(1.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: _thumNail()),
              _title(),
            ],
          ),
        ),
      );

  Widget _thumNail() => Container(
        key: const Key("recommend item row thum nail"),
        color: Colors.grey,
        alignment: Alignment.center,
        child: const Icon(Icons.add),
      );

  Widget _title() => SizedBox(
      height: 24,
      child: Text(key: const Key("recommend item row title"), widget.title));
}
