import 'package:get/get.dart';
import 'package:oscp_upskill/features/authentication/controllers/authentication_controller.dart';
import 'package:oscp_upskill/features/home/screens/home.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  Future<void> verifyOTP(String otp) async {
    var isVerified = await AuthenticationController.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const HomeScreen()) : Get.back();
  }
}
