import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:oscp_upskill/helpers/helper_functions.dart';

class OtpVerifyForm extends StatelessWidget {
  const OtpVerifyForm({
    super.key,
  });

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              OtpTextField(
                numberOfFields: 6,
                borderColor: Colors.black,
                focusedBorderColor: const Color(0xFFFF1137),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String code) {
                  // otp = code;
                  // OTPController.instance.verifyOTP(otp);
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // OTPController.instance.verifyOTP(otp);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 60),
                  backgroundColor: const Color(0xFFFF1137),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                child: const Text("Verify"),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
