import 'package:flutter/cupertino.dart';

/// 앱 전역에서 서버로부터 불러온 이미지를 랜더링하는 Component
class ThumbnailImage extends StatelessWidget {
  /// 이미지 서버 url 경로
  final String imageUrl;

  /// 이미지 위젯 너비
  final double? width;

  /// 이미지 위젯 높이
  final double? height;

  /// 이미지 타입 child
  ///
  final Widget? child;

  const ThumbnailImage({
    super.key,
    required this.imageUrl,
    required this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
