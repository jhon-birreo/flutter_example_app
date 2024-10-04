import '../../domain/datasources/auth_datasource.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_datasource_impl.dart';
import '../models/user_models.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl({AuthDataSource? dataSource})
      : dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<UserModel> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<UserModel> register(String email, String password, String fullName) {
    return dataSource.register(email, password, fullName);
  }
}
