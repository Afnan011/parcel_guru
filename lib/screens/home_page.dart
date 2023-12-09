import 'package:flutter/material.dart';
// import 'package:parcel_guru/screens/SignInScreen/forgot_password.dart';
import 'package:parcel_guru/screens/forgot_password_screen/forgot_password.dart';
import 'package:parcel_guru/screens/signin/signin.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('parcel guru'),
        ),
        body:
        Column(
          children: [
             const Center(
              child: Text("Parcel Guru"),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,MaterialPageRoute(builder: (context)=>const SignIn())
              );
            }, child: const Text("SignIn "))
          ],
        )
    );
  }
}