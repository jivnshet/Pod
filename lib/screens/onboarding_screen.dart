import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_consultations/constant.dart';
import 'package:medical_consultations/screens/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  // const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/onboarding_illustration.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 6,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose Doctor\nfor consultation',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                            color: kTitleTextColor),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "A doctor for all of your needs\npocket doctor in short",
                        style: TextStyle(
                            fontSize: 17,
                            color: kTitleTextColor.withOpacity(0.7)),
                      ),
                      SizedBox(height: 20),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        color: kOrangeColor,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: kWhiteColor),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
