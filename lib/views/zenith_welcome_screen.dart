import 'package:basicapp/constants/routes.dart';
import 'package:flutter/material.dart';

class ZenithWelcome extends StatefulWidget {
  const ZenithWelcome({super.key});

  @override
  State<ZenithWelcome> createState() => _ZenithWelcomeState();
}

class _ZenithWelcomeState extends State<ZenithWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome To Zenith Bank')),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(login);
              },
              child: const Text('Log In')),
        ],
      ),
    );
  }
}
