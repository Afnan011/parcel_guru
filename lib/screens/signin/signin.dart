import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool _obscureText = false;
  var eyeIcon = Icons.visibility_outlined;

  void togglePassword() {
    setState(() {
      eyeIcon =  _obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined;
      print(_obscureText);
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Phone Number",
                      style: TextStyle(
                          color: Color(0xFFEFF1F4),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),

                    const SizedBox(
                      height: 5,
                    ),

                    TextField(
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFEFF1F4),
                          fontWeight: FontWeight.w400),
                      decoration: const InputDecoration(
                          hintText: "Enter phone number",
                          filled: true,
                          fillColor: Color(0xFF2B303A),
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xff8A9199),
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(
                          color: Color(0xFFEFF1F4),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      obscureText: _obscureText,
                      obscuringCharacter: '*',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFEFF1F4),
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          filled: true,
                          fillColor: const Color(0xFF2B303A),
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff8A9199),
                              fontWeight: FontWeight.w400
                          ),
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          suffixIcon: IconButton(
                              onPressed: togglePassword,
                              icon:  Icon(eyeIcon, color: const Color(0xFFBABFC5),)
                          ),
                      ),
                    )
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextButton(
                      onPressed: () {},
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
                  width: double.infinity,
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF98017)
                    ),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0XFF21252C),
                      ),
                    ),
                  )),

              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff8A9199),
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: const Text(
                        "Create account",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFEFF1F4),
                        ),
                      ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
