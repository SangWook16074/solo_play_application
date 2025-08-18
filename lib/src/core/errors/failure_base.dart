abstract class FailureBase {
  final String message;

  const FailureBase({required this.message});
}

final class NetworkFailure extends FailureBase {
  NetworkFailure({required super.message});
}

final class ServerFailure extends FailureBase {
  ServerFailure({required super.message});
}

final class UnknownFailure extends FailureBase {
  UnknownFailure() : super(message: "알 수 없는 에러가 발생했습니다.");
}
