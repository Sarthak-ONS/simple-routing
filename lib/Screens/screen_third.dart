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
              Navigator.pushNamed(context, '/');
            },
            title: "Screen 1",
          ),
          MyCustomButton(
            onTapFunction: () {
              Navigator.pushNamed(context, '/second');
            },
            title: "Screen 2",
          ),
        ],
      ),
    );
  }
}
