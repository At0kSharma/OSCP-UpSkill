import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:oscp_upskill/features/login/controllers/login.dart';
import 'package:oscp_upskill/features/users/models/user_model.dart';
import 'package:oscp_upskill/helpers/helper_functions.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final controller = Get.put(LoginController());
  final formkey = GlobalKey<FormState>();
  var phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: HelperFunctions.screenWidth(),
        height: HelperFunctions.screenWidth() * 0.7,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), // Adjust the radius as needed
            topRight: Radius.circular(12.0), // Adjust the radius as needed
          ),
        ),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 340.0,
                child: TextFormField(
                  controller: controller.name,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(96, 87, 84, 84),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF1137),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 340,
                child: IntlPhoneField(
                  // controller: controller.phoneNo,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(96, 87, 84, 84),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFF1137),
                      ),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    phoneNumber = phone.completeNumber;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    final user = UserModel(
                        userName: controller.name.text.trim(),
                        phoneNumber: phoneNumber);
                    LoginController.instance.createUser(user);
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(340, 60),
                  backgroundColor: const Color(0xFFFF1137),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                child: const Text("NEXT"),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
