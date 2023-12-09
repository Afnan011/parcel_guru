import 'package:flutter/material.dart';
import 'package:parcel_guru/screens/signup/signup.dart';
import 'package:parcel_guru/widgets/button_primary.dart';
import '../forgot_password_screen/forgot_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = false;
  var eyeIcon = Icons.visibility_outlined;

  var phoneController = TextEditingController();
  var passController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void togglePassword() {
    setState(() {
      eyeIcon = _obscureText
          ? Icons.visibility_outlined
          : Icons.visibility_off_outlined;
      _obscureText = !_obscureText;
    });
  }

  String? checkPhoneNumber(val){
    var phone = phoneController.text.toString();
    if(phone.length != 10){
      return "Please enter valid phone number";
    }
    return null;
  }


  String? checkPassword(val){
    var pass = passController.text.toString();
    if(pass.isEmpty){
      return "Please enter your password";
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          width: double.infinity,
          color: const Color(0xff141924),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Color(0xFFEFF1F4),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                              color: Color(0xFFEFF1F4),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
        
                      TextFormField(
                        controller: phoneController,
                        validator: checkPhoneNumber,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFFEFF1F4),
                            fontWeight: FontWeight.w400
                        ),
                        decoration: const InputDecoration(
                          errorStyle: TextStyle(color: Color(0XFFFF7C7C)),
                          counterText: "",
                          hintText: "Enter phone number",
                          filled: true,
                          fillColor: Color(0xFF2B303A),
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xff8A9199),
                              fontWeight: FontWeight.w400),
        
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff141924)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF6D7688)),
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
                  height: 15,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: Color(0xFFEFF1F4),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: passController,
                        validator: checkPassword,
                        obscureText: _obscureText,
                        obscuringCharacter: '*',
                        maxLength: 20,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFFEFF1F4),
                            fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          errorStyle: const TextStyle(color: Color(0XFFFF7C7C)),
                          counterText: "",
                          hintText: "Enter password",
                          filled: true,
                          fillColor: const Color(0xFF2B303A),
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff8A9199),
                              fontWeight: FontWeight.w400),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff141924)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF6D7688)),
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
                          suffixIcon: IconButton(
                              onPressed: togglePassword,
                              icon: Icon(
                                eyeIcon,
                                color: const Color(0xFFBABFC5),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgotPassword()));
                        },
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFFEFF1F4)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: PrimaryButton(
                        btnText: "Sign In",
                        onPressed: () {
                          if(formKey.currentState!.validate()){}
                        })
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 15,),
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff8A9199),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySignUpPage()));
                      },
                      child: const Text(
                        "Create account",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFEFF1F4),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
