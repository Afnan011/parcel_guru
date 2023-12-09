import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:parcel_guru/onboarding/onboarding.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    
    super.initState();

    Timer(Duration(seconds: 5),(){
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => onboarding(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff21252C),
      body: Center(
        child: Container(
          child: ElasticIn(child: Image.asset("assets/images/parcel_guru.png",scale: 1.2,),duration: Duration(seconds: 2),),
        ),
      ),
    );
  }
}
