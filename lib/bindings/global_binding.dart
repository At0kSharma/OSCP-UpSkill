import 'package:get/get.dart';
import 'package:oscp_upskill/features/authentication/controllers/authentication_controller.dart';
import 'package:oscp_upskill/features/login/controllers/login.dart';
import 'package:oscp_upskill/features/verify/controllers/verify_controller.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<OTPController>(OTPController(), permanent: true);
    Get.put<LoginController>(LoginController(), permanent: true);
    Get.put<AuthenticationController>(AuthenticationController(),
        permanent: true);
  }
}
