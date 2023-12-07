class UserModel {
  final String? id;
  final String userName;
  final String phoneNumber;
  final String courseName = "OSCP Certification";

  const UserModel({
    this.id,
    required this.userName,
    required this.phoneNumber,
  });
  toJson() {
    return {"name": userName, "phone": phoneNumber, "course": courseName};
  }
}
