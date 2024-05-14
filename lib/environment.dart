// import 'package:firebase_core/firebase_core.dart';
// ignore_for_file: constant_identifier_names

import 'package:applied_nurse/app.dart';
import 'package:applied_nurse/helpers/locator.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

enum EnvType {
  DEVELOPMENT,
  STAGING,
  PRODUCTION,
}

class Environment {
  Environment() {
    // value = this;
    _init();
  }

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp();
    // await FirebaseMessagingProvider.init();
    // await SharedPreferenceService.init();

    try {
      setupServiceLocator();
      // await dotenv.load();
    } catch (e) {
      Logger.write(e.toString());
    }
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  }
}
