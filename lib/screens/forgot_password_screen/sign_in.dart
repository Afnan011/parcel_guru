import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _SignInState();
}

class _SignInState extends State<ForgotPassword> {
  var showTextError = "Please enter a valid phone number";
  var forgotPassword = TextEditingController();
  var msg = "";
  bool flag = true;
  void showError() {
    if (forgotPassword.text.length != 10) {
      msg = showTextError;
      flag = true;
    } else {
      msg = "";
      flag = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: const Text("Parcel Guru"),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff141924),
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 256,
                  child: Text(
                    "Enter your phone number, and we will send an OTP",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: Colors.white54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                  fontFamily: 'Inter'),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 276,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 16,
                  ),
                  controller: forgotPassword,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: const Color(0xff2B303A),
                    filled: true,
                    hintText: "Enter phone number",
                    hintStyle: const TextStyle(
                      color: Color(0xff8A9199),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 27,top: 8),
                child: Text(
                  msg,
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFF7C7C)),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                width: 276,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    //do something
                    showError();
                    setState(() {});
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black54),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(16)),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Inter',
                        color: Color(0xff21252C)),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: RichText(
                    text: const TextSpan(
                        // style: DefaultTextStyle.of(context).style,
                        children: [
                      TextSpan(
                          text: 'Remembered password?',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              color: Color(0xff8A9199),
                              fontWeight: FontWeight.w100)),
                      TextSpan(
                        text: ' Sign In',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w100),
                      )
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
