import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repositories/auth_repository.dart';
import '../../infrastructure/models/user_models.dart';
import '../../infrastructure/repositories/auth_repository_impl.dart';

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authRepository = AuthRepositoryImpl();

  return AuthNotifier(
    authRepository: authRepository,
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;

  AuthNotifier({
    required this.authRepository,
  }) : super(AuthState());

  Future<void> loginUser(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      await authRepository.login(email, password);
    } catch (e) {
      logout('Error no controlado');
    }
  }

  void registerUser(String email, String password, String fullName) async {
    try {
      await authRepository.register(email, password, fullName);
    } catch (e) {}
  }

  Future<void> logout([String? errorMessage]) async {
    state = state.copyWith(
      authStatus: AuthStatus.unAuthenticated,
      user: null,
      errorMessage: errorMessage,
    );
  }
}

enum AuthStatus { checking, authenticated, unAuthenticated }

class AuthState {
  final AuthStatus authStatus;
  final UserModel? user;
  final String errorMessage;

  AuthState(
      {this.authStatus = AuthStatus.checking,
      this.user,
      this.errorMessage = ''});

  AuthState copyWith({
    AuthStatus? authStatus,
    UserModel? user,
    String? errorMessage,
  }) =>
      AuthState(
          authStatus: authStatus ?? this.authStatus,
          user: user ?? this.user,
          errorMessage: errorMessage ?? this.errorMessage);
}
