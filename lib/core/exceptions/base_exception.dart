
class BaseException implements Exception {
  final String? code;
  final String? message;

  BaseException({ required this.message, this.code});
}
