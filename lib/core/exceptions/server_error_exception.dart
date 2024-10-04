import 'package:flutter_example_app/core/exceptions/base_exception.dart';
import 'package:flutter_example_app/core/utils/constants/exception_constants.dart';

class ServerErrorException extends BaseException {
  ServerErrorException(String message)
      : super(
          message: message,
          code: ExceptionConstants.internalServerError,
        );
}
