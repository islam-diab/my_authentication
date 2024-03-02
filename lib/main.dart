import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_authentication/core/routing/app_router.dart';
import 'package:my_authentication/firebase_options.dart';

import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}
