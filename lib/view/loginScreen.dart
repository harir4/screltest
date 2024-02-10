import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltest/modelview/authController.dart';
import 'package:screltest/view/registerScreen.dart';
import 'package:screltest/widgets/button.dart';
import 'package:screltest/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Login',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          txtfield(text: 'username', con: usernameController),
          SizedBox(
            height: 20,
          ),
          txtfield(text: 'password', con: passwordController),
          SizedBox(
            height: 20,
          ),
          Consumer<AuthController>(builder: (context, value, child) {
            return btn(
                onclick: () {
                  value.login(
                      username: usernameController.text,
                      password: passwordController.text,
                      context: context);
                },
                text: 'Login');
          }),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have a account?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
