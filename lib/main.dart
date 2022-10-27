import 'package:basicapp/constants/routes.dart';
import 'package:basicapp/views/home.dart';
import 'package:basicapp/views/login.dart';
import 'package:basicapp/views/zenith_welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const ZenithWelcome(),
      routes: {
        zenithwelcome: (context) => const ZenithWelcome(),
        login: (context) => const Login(),
        homePage: (context) => const HomePage()
      },
    ),
  );
}
