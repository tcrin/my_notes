import 'package:flutter/material.dart';
import 'package:mynotes/pages/notes_page.dart';
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
        '/login/': (context) => const LoginPage(),
        '/register/': (context) => const RegisterPage(),
        '/notes/': (context) => const NotesPage(),
      },
    );
  }
}
