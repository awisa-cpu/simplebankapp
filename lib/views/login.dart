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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account Number',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Account Number',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                    ),
                    controller: _accNumber,
                    autocorrect: false,
                    enableSuggestions: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                    ),
                    controller: _password,
                    autocorrect: false,
                    enableSuggestions: false,
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //there would be a checkbox implementation inplace of the TextButton
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Remember login",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  TextButton(
                    onPressed: () {
                      //implement a showDialog pop up
                    },
                    child: const Text(
                      "Login with Fingerprint",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: w * 0.9,
              height: h * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/loginbtn.png"),
                ),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    //implement a navigation for signIn to navigate to
                  },
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //implement a navigation for forgot_Password? to navigate to
              },
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
