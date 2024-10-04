import 'package:flutter_example_app/core/exceptions/base_exception.dart';

import '../utils/constants/exception_constants.dart';


class ForbiddenException extends BaseException {
  ForbiddenException(String message)
      : super(
          message: message,
          code: ExceptionConstants.forbidden,
        );
}
