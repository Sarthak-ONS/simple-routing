import 'package:flutter/material.dart';

import '../custom_button_widget.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff263F59),
        title: const Text('Third Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyCustomButton(
            onTapFunction: () {
              print("Navigate to Screen 1");
            },
            title: "Screen 1",
          ),
          MyCustomButton(
            onTapFunction: () {
              print("Navigate to Screen 2");
            },
            title: "Screen 2",
          ),
        ],
      ),
    );
  }
}
