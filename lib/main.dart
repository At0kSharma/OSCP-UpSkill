import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oscp_upskill/bindings/global_binding.dart';
import 'package:oscp_upskill/features/authentication/controllers/authentication_controller.dart';
import 'package:oscp_upskill/firebase_options.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationController()));
  GlobalBindings().dependencies();
  runApp(const App());
}
