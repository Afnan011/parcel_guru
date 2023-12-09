import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:parcel_guru/screens/signin/signin.dart';
import 'package:parcel_guru/widgets/button_primary.dart';

class otpPage extends StatefulWidget {
  const otpPage({super.key});

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
  var mobileNumber = "9123456900";

  otpPage(mobileNumber) {
    this.mobileNumber = mobileNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141924),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter OTP",
            style: TextStyle(
                fontFamily: "Inter",
                fontSize: 24,
                color: Color(0xFFEFF1F4),
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "We’ve sent an OTP code to your phone number, ",
            style: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                color: Color(0xff76889a),
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          Text(
            '+91  $mobileNumber',
            style: TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                color: Color(0xFFEFF1F4),
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 56,
          ),
          OtpTextField(
            numberOfFields: 4,
            autoFocus: true,
            borderColor: Color(0xFF6d7688),
            enabledBorderColor: Color(0xFF6d7688),
            focusedBorderColor: Colors.orange,
            textStyle: TextStyle(
              color: Color(0xFFEFF1F4),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter",
            ),
            borderRadius: BorderRadius.circular(16),
            borderWidth: 1,
            cursorColor: Color(0xFF6d7688),
            fieldWidth: 64,
            margin: EdgeInsets.symmetric(horizontal: 10),
            showFieldAsBox: true,
            onCodeChanged: (String code) {
              // handle validation or checks here
            },
            onSubmit: (String verificationCode) {
              print(verificationCode);
            },
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Didn't recieve any code?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff8A9199),
                ),
              ),
              TextButton(
                onPressed: () {
                  //to handle otp resend
                },
                child: const Text(
                  "Resend",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFFEFF1F4),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 335,
            child: PrimaryButton(onPressed: () {}, btnText: "Verify"),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Remembered Password?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff8A9199),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFFEFF1F4),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
