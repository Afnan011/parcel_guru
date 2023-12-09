import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:parcel_guru/screens/signin/signin.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  List onboardcontents = [
    {
      "image": 'assets/images/onboard_images/img_onboard1.png',
      "title": 'Your Delivery Partner',
      "description": 'Experience smooth and completely stress-free delivery',
    },
    {
      "image": 'assets/images/onboard_images/img_onboard2.png',
      "title": 'Make Quick Delivery',
      "description":
          'Hassle free and quick routes suggestion for quick delivery',
    },
    {
      "image": 'assets/images/onboard_images/img_onboard3.png',
      "title": 'Real-time tracking',
      "description":
          'Stay informed about the destination and get the real-time route map',
    }
  ];

  Color titleColor = Color(0xffEFF1F4);
  Color descColor = Color(0xff8A9199);
  Color btnColor = Color(0xff21252C);
  Color btnBgColor = Color(0xffF98017);

  int currentPage = 0;

  String btnText = "Continue";

  PageController pageController = PageController();

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141924),
      appBar: AppBar(
        backgroundColor: Color(0xff141924),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 8.0),
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    color: descColor,
                  ),
                ),
              ))
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(onboardcontents[index]['image']),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    onboardcontents[index]['title'],
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        color: titleColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Text(
                        onboardcontents[index]['description'],
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          color: descColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              );
            },
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: onboardcontents.length,
            onPageChanged: onChanged,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  (currentPage == (onboardcontents.length - 1))
                      ? SizedBox(
                          width: 335,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return SignIn();
                                },
                              ));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff21252c),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        btnBgColor)),
                          ),
                        )
                      : SizedBox(
                          width: 335,
                          child: ElevatedButton(
                            onPressed: () {
                              pageController.animateToPage(currentPage + 1,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.fastEaseInToSlowEaseOut);
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xff21252c),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        btnBgColor)),
                          ),
                        )
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      List<Widget>.generate(onboardcontents.length, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 4,
                      width: (index == currentPage) ? 30 : 20,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == currentPage)
                              ? Color(0xFFEFF1F4)
                              : Color(0xff2b303a)),
                    );
                  }),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
