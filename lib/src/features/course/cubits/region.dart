import 'dart:ui';

import 'package:solo_play_application/src/features/course/presentation/widget/hexagon_grid.dart';

enum Region {
  gangbuk("강북", Offset(120, 570)),
  dosim("도심", Offset(360, 463)),
  dongseoul("동서울", Offset(330, 720)),
  seonam("서남", Offset(500, 190)),
  namseoul("남서울", Offset(650, 350)),
  gangnam("강남", Offset(550, 620)),
  dongnam("동남", Offset(550, 850));
  // init("선택안함");

  final String label;

  final Offset offset;
  const Region(
    this.label,
    this.offset,
  );

  List<HexagonPosition> get region {
    switch (this) {
      case Region.gangbuk:
        return [
          const HexagonPosition(x: 2, y: 0),
          const HexagonPosition(x: 1, y: 1),
          const HexagonPosition(x: 2, y: 1),
          const HexagonPosition(x: 3, y: 1),
        ];
      case Region.dosim:
        return [
          const HexagonPosition(x: 1, y: 1),
          const HexagonPosition(x: 2, y: 1),
          const HexagonPosition(x: 0, y: 2),
          const HexagonPosition(x: 1, y: 2),
          const HexagonPosition(x: 2, y: 2),
          const HexagonPosition(x: 1, y: 3),
        ];
      case Region.dongseoul:
        return [
          const HexagonPosition(x: 1, y: 1),
          const HexagonPosition(x: 2, y: 1),
          const HexagonPosition(x: 1, y: 2),
          const HexagonPosition(x: 2, y: 2),
        ];
      case Region.seonam:
        return [
          const HexagonPosition(x: 0, y: 0, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 1, y: 1, type: HexagonSectionType.bottom),
        ];
      case Region.namseoul:
        return [
          const HexagonPosition(x: 0, y: 1, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 1, y: 1, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 2, y: 1, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 0, y: 2, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 1, y: 2, type: HexagonSectionType.bottom),
        ];

      case Region.gangnam:
        return [
          const HexagonPosition(x: 2, y: 1, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 1, y: 2, type: HexagonSectionType.bottom),
        ];
      case Region.dongnam:
        return [
          const HexagonPosition(x: 2, y: 0, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 1, y: 1, type: HexagonSectionType.bottom),
        ];
      default:
        return [];
    }
  }

  Map<Region, List<HexagonPosition>> get nearArea {
    switch (this) {
      case Region.gangbuk:
        return {
          Region.dosim: [
            const HexagonPosition(x: 0, y: 1),
            const HexagonPosition(x: 1, y: 2),
          ],
          Region.dongseoul: [
            const HexagonPosition(x: 4, y: 1),
            const HexagonPosition(x: 3, y: 2),
          ],
        };
      case Region.dosim:
        return {
          Region.gangbuk: [
            const HexagonPosition(x: 2, y: 0),
          ],
          Region.dongseoul: [
            const HexagonPosition(x: 3, y: 1),
            const HexagonPosition(x: 3, y: 2),
          ],
          Region.namseoul: [
            const HexagonPosition(x: 0, y: 3, type: HexagonSectionType.bottom),
            const HexagonPosition(x: 1, y: 4, type: HexagonSectionType.bottom),
          ],
          Region.gangnam: [
            const HexagonPosition(x: 2, y: 3, type: HexagonSectionType.bottom)
          ],
        };
      case Region.dongseoul:
        return {
          Region.gangbuk: [
            const HexagonPosition(x: 0, y: 0),
            const HexagonPosition(x: 1, y: 0),
          ],
          Region.dosim: [
            const HexagonPosition(x: 0, y: 1),
            const HexagonPosition(x: 0, y: 2),
          ],
          Region.gangnam: [
            const HexagonPosition(x: 1, y: 3, type: HexagonSectionType.bottom),
          ],
          Region.dongnam: [
            const HexagonPosition(x: 2, y: 3, type: HexagonSectionType.bottom),
            const HexagonPosition(x: 3, y: 3, type: HexagonSectionType.bottom),
          ],
        };
      case Region.seonam:
        return {
          Region.dosim: [
            const HexagonPosition(x: 2, y: 0),
          ],
          Region.namseoul: [
            const HexagonPosition(x: 2, y: 1, type: HexagonSectionType.bottom),
            const HexagonPosition(x: 1, y: 2, type: HexagonSectionType.bottom),
          ],
        };
      case Region.namseoul:
        return {
          Region.seonam: [
            const HexagonPosition(x: 0, y: 0, type: HexagonSectionType.bottom),
          ],
          Region.dosim: [
            const HexagonPosition(x: 1, y: 0),
            const HexagonPosition(x: 2, y: 0),
          ],
          Region.gangnam: [
            const HexagonPosition(x: 3, y: 1, type: HexagonSectionType.bottom),
          ],
        };
      case Region.gangnam:
        return {
          Region.namseoul: [
            const HexagonPosition(x: 0, y: 2, type: HexagonSectionType.bottom)
          ],
          Region.dosim: [
            const HexagonPosition(x: 0, y: 1),
            const HexagonPosition(x: 1, y: 1),
          ],
          Region.dongseoul: [
            const HexagonPosition(x: 2, y: 0),
            const HexagonPosition(x: 3, y: 1),
          ],
          Region.dongnam: [
            const HexagonPosition(x: 3, y: 2, type: HexagonSectionType.bottom),
          ],
        };
      case Region.dongnam:
        return {
          Region.gangnam: [
            const HexagonPosition(x: 0, y: 0, type: HexagonSectionType.bottom)
          ],
          Region.dongseoul: [
            const HexagonPosition(x: 1, y: 0),
          ],
        };
      default:
        return {};
    }
  }

  static List<HexagonPosition> getMap(Region type) {
    switch (type) {
      case Region.gangbuk:
        return [
          const HexagonPosition(x: 4, y: 0),
          const HexagonPosition(x: 5, y: 0),
          const HexagonPosition(x: 6, y: 0),
          const HexagonPosition(x: 5, y: 1),
        ];
      case Region.dosim:
        return [
          const HexagonPosition(x: 3, y: 3),
          const HexagonPosition(x: 4, y: 1),
          const HexagonPosition(x: 4, y: 2),
          const HexagonPosition(x: 4, y: 3),
          const HexagonPosition(x: 5, y: 2),
          const HexagonPosition(x: 5, y: 3),
        ];

      case Region.dongseoul:
        return [
          const HexagonPosition(x: 6, y: 1),
          const HexagonPosition(x: 6, y: 2),
          const HexagonPosition(x: 7, y: 2),
          const HexagonPosition(x: 7, y: 3),
        ];

      case Region.seonam:
        return [
          const HexagonPosition(x: 1, y: 3, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 2, y: 3, type: HexagonSectionType.bottom),
        ];

      case Region.namseoul:
        return [
          const HexagonPosition(x: 2, y: 4, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 2, y: 5, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 3, y: 4, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 3, y: 5, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 4, y: 4, type: HexagonSectionType.bottom),
        ];

      case Region.gangnam:
        return [
          const HexagonPosition(x: 5, y: 4, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 6, y: 3, type: HexagonSectionType.bottom),
        ];
      case Region.dongnam:
        return [
          const HexagonPosition(x: 7, y: 4, type: HexagonSectionType.bottom),
          const HexagonPosition(x: 8, y: 3, type: HexagonSectionType.bottom),
        ];
      default:
        return [];
    }
  }

  List<Path> getPaths(
    Region type, {
    required double radius,
    required double borderRadius,
    required double distance,
    required double space,
  }) {
    final positions = getMap(type);
    return positions.map((pos) {
      final x = pos.x;
      final y = pos.y;
      final center = pos.center(x, y, radius, distance);
      final path = pos.getHexagonPath(
          radius: radius,
          space: space,
          center: center,
          borderRadius: borderRadius);
      return path;
    }).toList();
  }
}
