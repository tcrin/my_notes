import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_assets.dart';
import 'package:mynotes/styles/app_colors.dart';
import 'package:mynotes/styles/app_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Column(
          children: [
            const SizedBox(
              height: 167,
            ),
            Image.asset(AppAssets.primaryIcon),
            const SizedBox(
              height: 54,
            ),
            Text(
              'New Experience',
              style: AppStyles.h1
                  .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                'Watch a new movie much easier than any before',
                style: AppStyles.h1
                    .copyWith(fontSize: 18, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            SizedBox(
              width: 255,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: AppStyles.h1
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                        color: Colors.teal,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
