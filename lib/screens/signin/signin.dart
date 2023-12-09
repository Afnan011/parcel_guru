import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff141924),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color(0xFFEFF1F4),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number",
                      style: TextStyle(
                          color: Color(0xFFEFF1F4),
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                    ),
                    TextField(
                      style: TextStyle(fontSize: 16, color: Color(0xFFEFF1F4), fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: "Enter phone number",
                        hintStyle: TextStyle(fontSize: 16, color: Color(0xff8A9199), fontWeight: FontWeight.w400),
                        border: OutlineInputBorder()
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
