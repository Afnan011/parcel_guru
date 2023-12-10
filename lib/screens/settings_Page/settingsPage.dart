import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 17.0),
            child: Text(
              "Settings Page",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFEFF1F4),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xff141924),
      ),
      backgroundColor: Color(0xff141924),
      body: Text("Hello",style: TextStyle(
          color: Colors.white
      ),),
    );
  }
}
