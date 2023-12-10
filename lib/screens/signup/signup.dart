import 'package:flutter/material.dart';
import 'package:parcel_guru/screens/signin/signin.dart';
import 'package:parcel_guru/widgets/button_primary.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MySignUpPage> {
  bool _obscureText = false;
  var eyeIcon = Icons.visibility_outlined;

  void togglePassword() {
    setState(() {
      eyeIcon = _obscureText
          ? Icons.visibility_outlined
          : Icons.visibility_off_outlined;
      _obscureText = !_obscureText;
    });
  }

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confPassController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? checkName(val) {
    var name = nameController.text.toString();
    if (name.isEmpty) {
      return 'Please enter your name';
    }
    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(name)) {
      return 'Please enter a valid name';
    }
    return null;
  }

  String? checkPhoneNumber(val){
    var phone = phoneController.text.toString();
    if(phone.length != 10){
      return "Please enter valid phone number";
    }
    return null;
  }

  String? checkPassword(val){
    var pass = passwordController.text.toString();
    if(pass.isEmpty){
      return "Please enter your password";
    }
    return null;
  }

  String? confPassword(val){
    var confPass = confPassController.text.toString();
    if(confPass.isEmpty){
      return "Please enter your password";
    }
    if(confPass!=passwordController.text){
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double deviceWidth = mediaQueryData.size.width;
    double deviceHeight = mediaQueryData.size.height;
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            color: const Color(0xff141924),
            width: deviceWidth,
            height: deviceHeight,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffEFF1F4),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                            TextFormField(
                              controller: nameController,
                              style: const TextStyle(color: Color(0xFFEFF1F4)),
                              keyboardType: TextInputType.text,
                              validator: checkName,
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(color: Color(0XFFFF7C7C)),
                                hintText: 'Enter Name',
                                hintStyle: TextStyle(color: Color(0xFFEFF1F4)),
                                labelStyle: TextStyle(color: Color(0xff8A9199)),
                                fillColor: Color(0xff2B303A),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff141924)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF6D7688)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffEFF1F4),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                            TextFormField(
                              controller: phoneController,
                              validator: checkPhoneNumber,
                              maxLength: 10,
                              style: const TextStyle(color: Color(0xFFEFF1F4)),
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                prefixText: '+91 ',
                                errorStyle: TextStyle(color: Color(0XFFFF7C7C)),
                                hintText: 'Enter phone number',
                                hintStyle: TextStyle(color: Color(0xFFEFF1F4)),
                                labelStyle: TextStyle(color: Color(0xff8A9199)),
                                fillColor: Color(0xff2B303A),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff141924)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF6D7688)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 0),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffEFF1F4),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                            TextFormField(
                              controller: passwordController,
                              validator: checkPassword,
                              style: const TextStyle(color: Color(0xFFEFF1F4)),
                              keyboardType: TextInputType.text,
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                errorStyle: const TextStyle(color: Color(0XFFFF7C7C)),
                                hintText: 'Enter password',
                                hintStyle:
                                    const TextStyle(color: Color(0xFFEFF1F4)),
                                labelStyle:
                                    const TextStyle(color: Color(0xff8A9199)),
                                fillColor: const Color(0xff2B303A),
                                filled: true,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    eyeIcon,
                                    color: const Color(0xFFEFF1F4),
                                  ),
                                  onPressed: togglePassword,
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff141924)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF6D7688)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                errorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedErrorBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              child: Text(
                                'Confirm Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffEFF1F4),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Inter'),
                              ),
                            ),
                            TextFormField(
                              controller: confPassController,
                              validator: confPassword,
                              style: const TextStyle(color: Color(0xFFEFF1F4)),
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(color: Color(0XFFFF7C7C)),
                                hintText: 'Enter password',
                                hintStyle: TextStyle(color: Color(0xFFEFF1F4)),
                                labelStyle: TextStyle(color: Color(0xff8A9199)),
                                fillColor: Color(0xff2B303A),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff141924)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF6D7688)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0XFFFF7C7C)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 5),
                        child: PrimaryButton(
                            btnHeight: 55, onPressed: () {
                          if (formKey.currentState?.validate() == true){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => const SignIn()));
                          }
                        }, btnText: 'Sign in'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
