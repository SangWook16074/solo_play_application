import 'dart:math';
import 'package:flutter/material.dart';

/// 육각형 지도 영역 그리드 뷰
///
/// 전달받은 Offset값을 통해 하나의 영역을 렌더링합니다.
class HexagonGrid extends StatelessWidget {
  /// 육각형의 radius
  ///
  /// 전달받은 육각형은 중앙점으로부터 꼭지점까지의 거리를 radius로 두고
  /// 모양을 렌더링합니다.
  /// 개발자는 육각형의 radius를 이용해서 값을 전달해야 합니다.
  /// 만약, radius가 1이라면 1인 정삼각형을 6개 합친형태의 육각형이 렌더링됩니다.
  final double radius;

  /// 육각형의 좌표 모음
  ///
  /// 개발자는 육각형의 좌표를 전달하여 하나의 개별적인 육각형을 렌더링할 수 있습니다.
  final List<HexagonPosition> offsets;

  /// 한 영역에 속하는 모든 육각형은 동일한 색상으로 지정됩니다.
  ///
  /// 전달받은 색이 없으면 앱의 primary color가 사용됩니다.
  final Color? tileColor;

  /// 육각형은 borderRadius를 지정할 수 있습니다.
  ///
  /// 만약 radius와 borderRadius가 동일하면 원이 렌더링됩니다.
  final double? borderRadius;

  /// 육각형 타일은 특정 space를 지정할 수 있습니다.
  ///
  /// 해당 space를 padding으로 육각형이 지정됩니다.
  final double? space;

  /// 특정 영역은 distance를 통해서 하단으로 이동시킬 수 있습니다.
  final double? distance;
  const HexagonGrid(
      {super.key,
      this.radius = 71.5,
      this.borderRadius = 10,
      this.space = 0.0,
      required this.offsets,
      this.distance = 30,
      this.tileColor});

  Offset getCanvasOffset() {
    var x = 0.0;
    var y = 0.0;
    for (HexagonPosition pos in offsets) {
      final nx = pos.x;
      final ny = pos.y;
      x = max(nx, x);
      y = max(ny, y);
    }
    final result = Offset(x.toDouble(), y.toDouble());
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final Offset maxOffset = getCanvasOffset();
    final width = (3 * maxOffset.dx + 4) / 2 * radius;
    final height = (2 * maxOffset.dy + 3) / 2 * radius * sqrt(3.0);
    return CustomPaint(
      key: const Key("Hexagon_Grid_Key"),
      size: Size(width, height + distance!),
      painter: HexagonPainter(
          radius: radius,
          space: space!,
          borderRadius: borderRadius!,
          positions: offsets,
          distance: distance!),
    );
  }
}

class HexagonPainter extends CustomPainter {
  /// [HexagonGrid]에서 전달받은 radius
  final double radius;

  /// [HexagonGrid]에서 전달받은 space
  final double space;

  /// [HexagonGrid]에서 전달받은 borderRadius
  final double borderRadius;

  /// [HexagonGrid]에서 전달받은 distance
  final double distance;

  /// [HexagonGrid]에서 전달받은 영역 좌표
  final List<HexagonPosition> positions;

  /// [HexagonGrid]에서 전달받은 label 영역
  final bool? showLabel;
  const HexagonPainter({
    required this.radius,
    required this.space,
    required this.borderRadius,
    required this.positions,
    required this.distance,
    this.showLabel = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 좌표마다 육각형 렌더링
    for (HexagonPosition postion in positions) {
      final x = postion.x;
      final y = postion.y;
      final center = postion.center(x, y, radius, distance);
      Paint paint = Paint()
        ..color = postion.color
        ..style = PaintingStyle.fill;

      /// 육각형의 radius, space, borderRadius를 고려하여 지정
      final path = postion.getHexagonPath(
          radius: radius,
          space: space,
          center: center,
          borderRadius: borderRadius);
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// [HexagonGrid]는 위 아래로 distance만큼 떨어질 수 있음.
/// default는 top
///
/// distance가 주어지면 bottom으로 지정된 타일은 모두 하단으로 distance만큼 이동함.
enum HexagonSectionType {
  top,
  bottom,
}

class HexagonPosition {
  final double x;
  final double y;
  final Color color;
  final HexagonSectionType type;

  const HexagonPosition({
    required this.x,
    required this.y,
    this.type = HexagonSectionType.top,
    this.color = const Color(0xffafafaf),
  });

  HexagonPosition copy({
    double? x,
    double? y,
    Color? color,
    HexagonSectionType? type,
  }) {
    return HexagonPosition(
        x: x ?? this.x,
        y: y ?? this.y,
        color: color ?? this.color,
        type: type ?? this.type);
  }

  Offset center(double x, double y, double radius, double distance) {
    final thOffset = Offset(radius, sqrt(3.0) * radius);
    final Map<HexagonSectionType, double> vector = {
      HexagonSectionType.top: 0,
      HexagonSectionType.bottom: distance,
    };
    return Offset(
        3 * x / 2 * radius + thOffset.dx,
        (sqrt(3.0) * radius * y) -
            ((sqrt(3.0) * radius / 2) * (x % 2)) +
            thOffset.dy +
            vector[type]!);
  }

  Path getHexagonPath({
    required double radius,
    required double space,
    required Offset center,
    required double borderRadius,
  }) {
    const angle = (pi * 2) / 6;
    final paddingRadius = radius - space;
    final firstOffset = Offset(paddingRadius * cos(0.0) + center.dx,
        paddingRadius * sin(0.0) + center.dy);
    final path = Path();
    path.moveTo(firstOffset.dx, firstOffset.dy);
    for (int i = 1; i < 7; i++) {
      // 첫번째 각도와 두번째 각도 계산
      final currAngle = angle * i;
      final currX = paddingRadius * cos(currAngle) + center.dx;
      final currY = paddingRadius * sin(currAngle) + center.dy;

      final r = borderRadius;
      final d = 2 * sqrt(3.0) * r / 3;
      final dx = d * cos(currAngle + pi) + currX;
      final dy = d * sin(currAngle + pi) + currY;
      final oval = Rect.fromCircle(center: Offset(dx, dy), radius: r);
      path.arcTo(oval, currAngle - pi / 6, pi / 3, false);
    }
    return path;
  }
}
