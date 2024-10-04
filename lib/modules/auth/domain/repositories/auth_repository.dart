
import '../../infrastructure/models/user_models.dart';

abstract class AuthRepository {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password, String fullName);
}
