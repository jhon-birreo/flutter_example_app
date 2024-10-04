import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

import '../../validations/validations.dart';


part 'login_state.dart';

class LoginFormNotifier extends StateNotifier<LoginFormState> {


  final Function(String, String) loginUserCallback;

  LoginFormNotifier({
    required this.loginUserCallback
  }): super( LoginFormState() );
  
  onEmailChange( String value ) {
    final newEmail = Email.dirty(value);
    state = state.copyWith(
      email: newEmail,
      isValid: Formz.validate([ newEmail, state.password ])
    );
  }

  onPasswordChanged( String value ) {
    final newPassword = Password.dirty(value);
    state = state.copyWith(
      password: newPassword,
      isValid: Formz.validate([ newPassword, state.email ])
    );
  }

  onFormSubmit() async {
    _touchEveryField();

    if ( !state.isValid ) return;

    state = state.copyWith(
      isFormPosted: true
    );

    await loginUserCallback( state.email.value, state.password.value );

    state = state.copyWith(
      isFormPosted: false
    );

  }

  _touchEveryField() {

    final email    = Email.dirty(state.email.value);
    final password = Password.dirty(state.password.value);

    state = state.copyWith(
      isFormPosted: true,
      email: email,
      password: password,
      isValid: Formz.validate([ email, password ])
    );

  }

}