import 'package:basicapp/constants/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _accNumber;
  late TextEditingController _password;

  @override
  void initState() {
    _accNumber = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _accNumber.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Column(
        children: [
          const Text('Account Number'),
          TextField(
            controller: _accNumber,
            autocorrect: false,
            enableSuggestions: false,
          ),
          const Text('Password'),
          TextField(
            controller: _password,
            autocorrect: false,
            enableSuggestions: false,
            obscureText: true,
          ),
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
