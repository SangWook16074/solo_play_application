import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/core/utils/enum_extension.dart';

enum TestEnum0 { T1, T2, T3 }

enum TestEnum1 { t1, t2, t3 }

void main() {
  group('EnumFromString extension', () {
    test('should return correct enum for valid string', () {
      expect(TestEnum0.values.fromString('T1'), TestEnum0.T1);
      expect(TestEnum0.values.fromString('T2'), TestEnum0.T2);
      expect(TestEnum1.values.fromString('t1'), TestEnum1.t1);
      expect(TestEnum1.values.fromString('t2'), TestEnum1.t2);
    });

    test('should throw ArgumentError for unknown string if no default provided',
        () {
      expect(() => TestEnum0.values.fromString('T4'),
          throwsA(isA<ArgumentError>()));
    });

    test('should return default value for unknown string if default provided',
        () {
      final result =
          TestEnum1.values.fromString('t4', defaultValue: TestEnum1.t1);
      expect(result, TestEnum1.t1);
    });
  });
}
