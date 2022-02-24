import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/pages/login_page.dart';
import 'package:mynotes/pages/verify_email_page.dart';
import 'package:mynotes/providers/log_provider.dart';

import '../firebase_options.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                const LogProvider('😍').log('Email is verified');
              } else {
                return const VerifyEmailPage();
              }
            } else {
              return const LoginPage();
            }
            return const Text('Done');
          // final user = FirebaseAuth.instance.currentUser;
          // if (user?.emailVerified ?? false) {
          //   //Đã xác thực
          //   const LogProvider('😍').log('You are a verified user');
          // } else {
          //   //Chưa xác thực
          //   const LogProvider('😰')
          //       .log('You need to verified your email first');
          //   Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => VerifyEmailPage()));
          // }
          // return const Text('Done');

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
