import 'package:flutter/material.dart';

class CustomStartButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  CustomStartButton(this.title, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade300),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
