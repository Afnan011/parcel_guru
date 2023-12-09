import 'package:flutter/material.dart';
import 'package:parcel_guru/widgets/button_primary.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MySignUpPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    double deviceWidth = mediaQueryData.size.width;
    double deviceHeight = mediaQueryData.size.height;
    return Scaffold(
      body: SingleChildScrollView(
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
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Name',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffEFF1F4),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 16, right: 16),
                          child: TextField(
                            style: const TextStyle(color: Color(0xFFEFF1F4)),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter Name',
                              hintStyle:
                                  const TextStyle(color: Color(0xFFEFF1F4)),
                              labelStyle:
                                  const TextStyle(color: Color(0xff8A9199)),
                              fillColor: const Color(0xff2B303A),
                              filled: true,
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF98017)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffEFF1F4),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 16, right: 16),
                          child: TextField(
                            style: const TextStyle(color: Color(0xFFEFF1F4)),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'Enter phone number',
                              hintStyle:
                                  const TextStyle(color: Color(0xFFEFF1F4)),
                              labelStyle:
                                  const TextStyle(color: Color(0xff8A9199)),
                              fillColor: const Color(0xff2B303A),
                              filled: true,
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffF98017))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffEFF1F4),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 16, right: 16),
                          child: TextField(
                            style: const TextStyle(color: Color(0xFFEFF1F4)),
                            obscureText: obscureText,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter password',
                              hintStyle:
                                  const TextStyle(color: Color(0xFFEFF1F4)),
                              labelStyle:
                                  const TextStyle(color: Color(0xff8A9199)),
                              fillColor: const Color(0xff2B303A),
                              filled: true,
                              suffixIcon: IconButton(
                                icon: Icon(
                                    obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color(0xffEFF1F4)),
                                onPressed: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffF98017))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Confirm Password',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffEFF1F4),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 16, right: 16),
                          child: TextField(
                            style: const TextStyle(color: Color(0xFFEFF1F4)),
                            obscureText: obscureText,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter password',
                              hintStyle:
                                  const TextStyle(color: Color(0xFFEFF1F4)),
                              labelStyle:
                                  const TextStyle(color: Color(0xff8A9199)),
                              fillColor: const Color(0xff2B303A),
                              filled: true,
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffF98017))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 10, right: 20, left: 20),
                      child: PrimaryButton(
                          btnHeight: 55,
                          onPressed: () {
                            print('object');
                          },
                          btnText: 'Sign in'),
                    ),
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
