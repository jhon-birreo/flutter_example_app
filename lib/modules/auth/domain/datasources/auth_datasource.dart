
import '../../infrastructure/models/user_models.dart';

abstract class AuthDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password, String fullName);
}
