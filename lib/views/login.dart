import 'package:basicapp/constants/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Column(
        children: [
          const TextField(),
          const TextField(),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                homePage,
                (route) => false,
              );
            },
            child: const Text('SIGN IN'),
          ),
          TextButton(
              onPressed: () {
                //implement a reset password screen
              },
              child: const Text('Forgot Password?'))
        ],
      ),
    );
  }
}
