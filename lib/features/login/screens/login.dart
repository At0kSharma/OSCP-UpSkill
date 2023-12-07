import 'package:flutter/material.dart';
import 'package:oscp_upskill/features/login/screens/widgets/login_form.dart';
import 'package:oscp_upskill/features/widgets/offer_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: const Color(0xFFFF1137),
      body: Stack(
        children: [
          const OfferText(),
          LoginForm(formkey: formkey),
        ],
      ),
    );
  }
}
