import 'package:flutter_example_app/core/exceptions/base_exception.dart';

import '../utils/constants/exception_constants.dart';

class BadRequestException extends BaseException {
  BadRequestException(String message)
      : super(
          message: message,
          code: ExceptionConstants.badRequest,
        );
}
