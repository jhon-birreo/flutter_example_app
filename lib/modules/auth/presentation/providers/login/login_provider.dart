import 'package:flutter_example_app/modules/auth/presentation/providers/login/login_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth_provider.dart';


final loginFormProvider =
    StateNotifierProvider<LoginFormNotifier, LoginFormState>((ref) {
  final loginUserCallback = ref.watch(authNotifierProvider.notifier).loginUser;
  return LoginFormNotifier(loginUserCallback: loginUserCallback);
});
