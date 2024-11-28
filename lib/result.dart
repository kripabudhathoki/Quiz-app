import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? score;
  Function() resetData;

  Result(this.score, this.resetData);

  String get resultPhrase {
    if (score! >= 6) {
      return '🌟 You are techno savvy!';
    } else if (score! >= 5) {
      return '🙂 You are neutral!';
    } else {
      return "😟 You are technophobic!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF58002F),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Text(
            "YOUR SCORE: ${score}",
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF58002F),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              backgroundColor:  Color(0xAA6F0202),
            ),
            onPressed: resetData,
            child: Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
