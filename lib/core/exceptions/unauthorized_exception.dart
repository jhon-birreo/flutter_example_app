import 'package:flutter_example_app/core/exceptions/base_exception.dart';
import 'package:flutter_example_app/core/utils/constants/exception_constants.dart';

class UnauthorisedException extends BaseException {
  UnauthorisedException(String message)
      : super(
          message: message,
          code: ExceptionConstants.unauthorized,
        );
}
