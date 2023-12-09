import 'package:flutter/material.dart';
import 'package:parcel_guru/screens/forgot_password_screen/sign_in.dart';
import 'package:parcel_guru/screens/home_page.dart';

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
      home: const MyHomePage(),
    );
  }
}
