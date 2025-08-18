import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/utils/result.dart';

void main() {
  group(Result, () {
    test('Success calls success callback', () {
      final result = Success<int, String>(42);

      final value = result.when(
        success: (data) => data * 2,
        failure: (error) => 0,
      );

      expect(value, 84);
    });

    test('Failure calls failure callback', () {
      final result = Failure<int, String>("error");

      final value = result.when(
        success: (data) => 0,
        failure: (error) => "Got $error",
      );

      expect(value, "Got error");
    });
  });
}
