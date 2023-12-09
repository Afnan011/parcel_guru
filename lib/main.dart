import 'package:flutter/material.dart';
import 'package:parcel_guru/screens/home_Screen/homeScreen.dart';
import 'package:parcel_guru/screens/otp_Verification/otpPage.dart';
import 'package:parcel_guru/screens/signup/signup.dart';
import 'package:parcel_guru/screens/skeleton_Bottom_Navigation/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'parcel guru',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
        fontFamily: 'Inter'
      ),
      home:  bottomNavigation(),
    );
  }
}
