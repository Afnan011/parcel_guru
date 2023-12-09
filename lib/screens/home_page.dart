import 'package:flutter/material.dart';
// import 'package:parcel_guru/screens/SignInScreen/sign_in.dart';
import 'package:parcel_guru/screens/forgot_password_screen/sign_in.dart';


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
                context,MaterialPageRoute(builder: (context)=>const ForgotPassword())
              );
            }, child: const Text("SignIn "))
          ],
        )
    );
  }
}