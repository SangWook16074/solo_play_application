final class GetUserDataImpl implements GetUserData {
  @override
  call() {
    /// 로컬 스토리지로부터 사용자 로그인 정보를 조회
    ///
    /// 없으면 null 반환.
    return null;
  }
}

abstract class GetUserData {
  call();
}
