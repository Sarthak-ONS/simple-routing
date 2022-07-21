import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    Key? key,
    required this.title,
    required this.onTapFunction,
  }) : super(key: key);

  final String title;
  final Function onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFunction();
      },
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          decoration: const BoxDecoration(
            color: Color(0xff263F59),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
