import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:solo_play_application/src/core/widget/thum_nail_image.dart';

void main() {
  group(ThumbnailImage, () {
    group("ThumNailImage with fixed height = 100, fixed width = 200", () {
      late Widget widget;

      setUp(() {
        widget = MaterialApp(
          home: Scaffold(
            body: ThumbnailImage(
              imageUrl: "",
              width: 200,
              height: 100,
              child: Container(),
            ),
          ),
        );
      });

      testWidgets("should render fixed height and fixed width correcty",
          (tester) async {
        await tester.pumpWidget(widget);

        final finder = find.byType(SizedBox);
        final target = tester.widget<SizedBox>(finder);
        expect(target.height, 100);
        expect(target.width, 200);
      });
    });
  });
}
