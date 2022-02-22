import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_assets.dart';
import 'package:mynotes/styles/app_colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Image.asset(AppAssets.primaryIcon),
      ),
    );
  }
}
