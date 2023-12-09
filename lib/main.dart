import 'package:flutter/material.dart';
import 'package:parcel_guru/screens/home_page.dart';
import 'package:parcel_guru/screens/signin/signin.dart';

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
      home: const SignIn(),
    );
  }
}
