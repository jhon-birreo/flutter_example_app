class UserEntity {
  final String userId;
  final String email;
  final String firstName;
  final String? lastName;
  final String? gender;
  final String? phoneNumber;

  UserEntity(
      {required this.userId,
      required this.email,
      required this.firstName,
      this.lastName,
      this.gender,
      this.phoneNumber});
}
