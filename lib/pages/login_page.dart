import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import '../providers/log_provider.dart';

import 'register_page.dart';
import 'dart:developer' as devtools show log;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Login'),
        ),
        body: Column(
          children: [
            TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter your email here',
              ),
            ),
            TextField(
              controller: _password,
              decoration: const InputDecoration(
                hintText: 'Enter your password here',
              ),
            ),
            TextButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  final userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email, password: password);
                  //const LogProvider('😍').log(userCredential.toString());
                  // ignore: avoid_print
                  devtools.log(userCredential.toString());
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/notes/', (route) => false);
                  // const LogProvider('😰').log('Something bad happend');
                } on FirebaseAuthException catch (e) {
                  // const LogProvider('😰').log('Something bad happend');
                  // print(e.code);
                  //Email chưa đăng ký
                  if (e.code == 'user-not-found') {
                    const LogProvider('😰').log('User not found');
                  }
                  //Mật khẩu không đúng
                  else if (e.code == 'wrong-password') {
                    const LogProvider('😰').log('Wrong password');
                  }
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/register/', (route) => false);
              },
              child: const Text('Not registered yet? Register here!'),
            ),
          ],
        ));
  }
}
