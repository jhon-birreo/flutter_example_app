class UserModel {
  final String userId;
  final String email;
  final String firstName;
  final String? lastName;
  final String? gender;
  final String? phoneNumber;

  UserModel({
    required this.userId,
    required this.email,
    required this.firstName,
    this.lastName,
    this.gender,
    this.phoneNumber,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final userData = json['userData'];

    return UserModel(
      userId: userData["userId"],
      email: userData["email"],
      firstName: userData["firstName"],
      lastName: userData["lastName"],
      gender: userData['gender'],
      phoneNumber: userData["phoneNumber"],
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "gender": gender,
        "phoneNumber": phoneNumber,
      };
}
