import 'package:flutter/material.dart';
import '../pages/verify_email_page.dart';
import '../constants/routes.dart';
import '../pages/notes_page.dart';
import '../pages/home_page.dart';
import '../pages/register_page.dart';

import 'login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginPage(),
        registerRoute: (context) => const RegisterPage(),
        notesRoute: (context) => const NotesPage(),
        verifyEmailRoute: (context) => const VerifyEmailPage(),
      },
    );
  }
}
