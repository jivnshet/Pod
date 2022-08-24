import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_consultations/components/Category_Card.dart';
import 'package:medical_consultations/components/Doctor_Card.dart';
import 'package:medical_consultations/constant.dart';

import '../components/Search_Bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/icons/menu.svg'),
                      SvgPicture.asset('assets/icons/profile.svg'),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Find your desired\nDoctor",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: kTitleTextColor),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: SearchBar()),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kTitleTextColor,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                // CategoryCard(),
                buildCategoryList(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Top Doctors',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kTitleTextColor,
                        fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                buildDoctorList(),
              ],
            ),
          ),
        ));
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 30),
          CategoryCard(
              "Dental\nSurgeon", "assets/icons/dental_surgeon.png", kBlueColor),
          SizedBox(width: 10),
          CategoryCard(
              "Heart\nSurgeon", "assets/icons/heart_surgeon.png", kYellowColor),
          SizedBox(width: 10),
          CategoryCard("Eye\nSpecialist", "assets/icons/eye_specialist.png",
              kOrangeColor),
          SizedBox(width: 30),

          // CategoryCard(),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          DoctorCard("Dr. Mallika Naik", "Heart Surgeon\n@Apollo Hospitals",
              "assets/images/doctor1.png", kBlueColor),
          SizedBox(height: 20),
          DoctorCard("Dr. Arjun Salve", "Eye Specialist\n@Manipal Hospitals",
              "assets/images/doctor2.png", kYellowColor),
          SizedBox(height: 20),
          DoctorCard("Dr. Stella D'Souza", "Dental Surgeon\n@Victor Hospitals",
              "assets/images/doctor3.png", kOrangeColor),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
