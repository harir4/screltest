import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltest/modelview/authController.dart';
import 'package:screltest/view/loginScreen.dart';
import 'package:screltest/widgets/button.dart';
import 'package:screltest/widgets/textfield.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Register',
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
                  value.register(
                      username: usernameController.text,
                      password: passwordController.text,
                      context: context);
                },
                text: 'Register');
          }),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have a account?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
