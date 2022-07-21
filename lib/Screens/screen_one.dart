import 'package:flutter/material.dart';

import '../custom_button_widget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff263F59),
        title: const Text('First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyCustomButton(
            onTapFunction: () {
              print("Navigate to Screen 2");
            },
            title: "Screen 2",
          ),
          MyCustomButton(
            onTapFunction: () {
              print("Navigate to Screen 3");
            },
            title: "Screen 3",
          ),
        ],
      ),
    );
  }
}
