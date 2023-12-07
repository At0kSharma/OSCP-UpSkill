import 'package:flutter/material.dart';
import 'package:oscp_upskill/features/verify/screens/widgets/otp_verify.dart';
import 'package:oscp_upskill/features/widgets/offer_text.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // String otp;
    return const Scaffold(
      backgroundColor: Color(0xFFFF1137),
      body: Stack(
        children: [
          OfferText(),
          OtpVerifyForm(),
        ],
      ),
    );
  }
}
