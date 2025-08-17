/// 열거형 클래스의 파싱 확장
///
///
extension EnumFromString<T extends Enum> on List<T> {
  // 기본값 설정 시 오류상황에서 기본값으로 적용됨
  T fromString(String str, {T? defaultValue}) {
    return firstWhere(
      (e) => e.name.toLowerCase() == str.toLowerCase(),
      orElse: () =>
          defaultValue ?? (throw ArgumentError('Unknown value: $str')),
    );
  }
}
