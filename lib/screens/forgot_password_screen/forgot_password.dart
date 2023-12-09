import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parcel_guru/screens/signin/signin.dart';
import 'package:parcel_guru/widgets/button_primary.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _SignInState();
}

class _SignInState extends State<ForgotPassword> {


  @override
  Widget build(BuildContext context) {
    _ColorChangingTextFieldState ob2= _ColorChangingTextFieldState();

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
                height: 56,
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
              const SizedBox(
                width: 276,
                child: ColorChangingTextField(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 27, top: 8),
                child: Text(
                  ob2.flag==true?ob2.errorMessage:"",
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFF7C7C)),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                  width: 276,
                  height: 52,
                  child: PrimaryButton(
                    onPressed: () {
                      setState(() {
                        ob2.showError();
                      });
                      // if(ob2.flag==false){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const OTP()))
                      // }
                    },
                    btnText: "Continue",
                  )),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 160.0, left: 65),
                  child: Row(
                    children: [
                      const Text(
                        "Remembered password?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Inter',
                            color: Color(0xff8A9199)),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()));
                            });
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ColorChangingTextField extends StatefulWidget {
  const ColorChangingTextField({super.key});

  @override
  _ColorChangingTextFieldState createState() => _ColorChangingTextFieldState();


}

class _ColorChangingTextFieldState extends State<ColorChangingTextField> {
  final TextEditingController _controller = TextEditingController();
  Color _textFieldColor = Colors.redAccent;
  FocusNode focusNode=FocusNode();
  bool hasHint=true;
  String txt="Enter phone number";
  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
    focusNode.addListener(() {
      if(focusNode.hasFocus){
        setState(() {
          hasHint=false;
        });
      }else{
        setState(() {
          hasHint=true;
        });
      }
    });
  }

  void _onTextChanged() {
    if (_controller.text.length == 10) {
      // Change the color when 10 characters are added
      setState(() {
        _textFieldColor = Colors.green;

      });
    } else {
      // Reset the color to the original when the text changes
      setState(() {
        _textFieldColor = Colors.redAccent;
      });
    }
  }

  _SignInState ob=_SignInState();
  String msg="";
  var errorMessage="Please enter a valid phone number";
  bool flag=true;
  void showError() {
    setState(() {
      if(_controller.text.length!=10){
        flag=true;
      }else{
        flag=false;
      }
    });

  }


  @override
  Widget build(BuildContext context) {

    focusNode: focusNode;
    return TextField(
        // maxLength: 10,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
          FilteringTextInputFormatter.digitsOnly
        ],
        style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16),
        keyboardType: TextInputType.phone,
        controller: _controller,
        decoration: InputDecoration(
            fillColor: const Color(0xff2B303A),
            filled: true,
            prefixText: "+91 ",
            prefixStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400),
            // hasFloatingPlaceholder=true,
            hintText: hasHint?txt:"",
            hintStyle: const TextStyle(
                color: Color(0xff8A9199),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: _textFieldColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xff2B303A)))));
  }

  @override
  void dispose() {
    focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }
}
// TextField(
// maxLength: 10,
// inputFormatters: [
// LengthLimitingTextInputFormatter(10)
// ],
// style: const TextStyle(
// color: Colors.white,
// fontFamily: 'Inter',
// fontSize: 16,
// ),
// controller: forgotPassword,
// keyboardType: TextInputType.phone,
// decoration: InputDecoration(
// fillColor: const Color(0xff2B303A),
// filled: true,
//
// hintText: "Enter phone number",
// hintStyle: const TextStyle(
// color: Color(0xff8A9199),
// fontSize: 16,
// fontFamily: 'Inter',
// fontWeight: FontWeight.w400
//
// ),
// focusedBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(8),
// borderSide: const BorderSide(
// width:0,
// color: Color(0xffFF7C7C)
// ),
// ),
// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.circular(8),
// borderSide: const BorderSide(
// width: 0, color: Color(0xff8A9199)
// ),
//
// ),
// ),
// )
