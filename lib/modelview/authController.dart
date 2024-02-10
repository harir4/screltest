import 'package:flutter/material.dart';
import 'package:screltest/modelview/dbservices.dart';
import 'package:screltest/view/home.dart';
import 'package:screltest/view/loginScreen.dart';

class AuthController extends ChangeNotifier {
  Future<void> register(
      {required String username,
      required String password,
      required BuildContext context}) async {
    try {
      if (username.isNotEmpty && password.isNotEmpty) {
        bool isregistered =
            await dbServices.register(username: username, password: password);
        if (isregistered == true) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('registered successfully')));
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('somthing went wrong')));
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('cannot be blank')));
      }
    } catch (e) {}
  }

  Future<void> login(
      {required String username,
      required String password,
      required BuildContext context}) async {
    if (username.isNotEmpty && password.isNotEmpty) {
      bool isLogin =
          await dbServices.login(username: username, password: password);
      if (isLogin == true) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('successfully logged in')));
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('somthing went wrong')));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('cannot be blank')));
    }
  }
}
