import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oscp_upskill/features/authentication/controllers/authentication_controller.dart';
import 'package:oscp_upskill/features/users/controllers/user_controller.dart';
import 'package:oscp_upskill/features/users/models/user_model.dart';
import 'package:oscp_upskill/features/verify/screens/verify.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final name = TextEditingController();

  final userRepo = Get.put(UserController());

  Future<void> createUser(UserModel user) async {
    print(user.userName);
    print(user.phoneNumber);
    phoneAuthentication(user.phoneNumber);
    await userRepo.createUser(user);
    Get.to(() => const VerifyScreen());
  }

  void phoneAuthentication(String phoneNumber) {
    AuthenticationController.instance.phoneAuthentication(phoneNumber);
  }
}
