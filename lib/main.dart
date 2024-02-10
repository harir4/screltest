import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltest/modelview/authController.dart';
import 'package:screltest/modelview/dataController.dart';
import 'package:screltest/modelview/dbservices.dart';
import 'package:screltest/view/home.dart';
import 'package:screltest/view/loginScreen.dart';
import 'package:screltest/view/registerScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dbServices.initdb();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => DataController()),
      ChangeNotifierProvider(create: (_) => AuthController())
    ],
    child: MaterialApp(
      home: LoginScreen(),
    ),
  ));
}
