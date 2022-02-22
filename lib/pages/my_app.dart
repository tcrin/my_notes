import 'package:flutter/material.dart';
import 'package:mynotes/pages/home_page.dart';
import 'package:mynotes/pages/landing_page.dart';
import 'package:mynotes/pages/login_page.dart';
import 'package:mynotes/pages/onbording_page.dart';
import 'package:mynotes/pages/register_page.dart';

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
      home: const LoginPage(),
    );
  }
}
