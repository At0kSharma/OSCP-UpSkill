import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:oscp_upskill/helpers/helper_functions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formkey,
  }) : _formkey = formkey;

  final GlobalKey<FormState> _formkey;

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
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 340.0,
                child: TextFormField(
                  // controller: controller.name,
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
                    // print(phone.countryCode);
                    // phoneNumber = phone.completeNumber;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // if (_formkey.currentState!.validate()) {
                  //   final user = UserModel(
                  //       userName: controller.name.text.trim(),
                  //       phoneNumber: phoneNumber);
                  //   LogInController.instance.createUser(user);
                  // }
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
