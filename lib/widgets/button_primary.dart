import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String btnText;
  final double? btnWidth;
  final double? btnHeight;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      required this.btnText,
      this.btnWidth,
      this.btnHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(
                btnWidth ?? MediaQuery.of(context).size.width,
                btnHeight ?? MediaQuery.of(context).size.height * 0.06,
              ),
              backgroundColor: const Color(0xffF98017),
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Center(
            child: Text(
              btnText,
              style: const TextStyle(fontFamily: 'Inter',
                  fontSize: 16,
                  color: Color(0XFF21252C),
                  fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}
