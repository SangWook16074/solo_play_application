/// 프로젝트 전역 Result 객체
sealed class Result<T, F> {
  const Result();
  R when<R>({
    required R Function(T data) success,
    required R Function(F failure) failure,
  });
}

/// 성공 객체
///
///
class Success<T, F> extends Result<T, F> {
  final T data;
  const Success(this.data);

  @override
  R when<R>({
    required R Function(T data) success,
    required R Function(F failure) failure,
  }) {
    return success(data);
  }
}

/// 실패 객체
///
///
class Failure<T, F> extends Result<T, F> {
  final F error;
  const Failure(this.error);

  @override
  R when<R>({
    required R Function(T data) success,
    required R Function(F failure) failure,
  }) {
    return failure(error);
  }
}
