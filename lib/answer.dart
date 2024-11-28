import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() answerPressed;
  final String? answer;

  Answer(this.answerPressed, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(500, 50),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: Color(0xFF6F0202),
        ),
        onPressed: answerPressed,
        child: Text(
          answer!,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
