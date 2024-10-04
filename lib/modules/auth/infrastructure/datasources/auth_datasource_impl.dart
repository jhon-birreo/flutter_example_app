import '../../domain/datasources/auth_datasource.dart';
import '../models/user_models.dart';

class AuthDataSourceImpl extends AuthDataSource {
  @override
  Future<UserModel> login(String email, String password) async {
    try {
      final response = {'email': email, 'password': password};
      final user = UserModel.fromJson(response);
      return user;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<UserModel> register(
      String email, String password, String fullName) async {
    try {
      final response = {
        'email': email,
        'password': password,
        'fullName': fullName,
        'origin': 'mobile'
      };
      final useruserRegister = UserModel.fromJson(response);
      return useruserRegister;
    } catch (e) {
      throw Exception();
    }
  }
}
