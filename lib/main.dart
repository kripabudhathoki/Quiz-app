import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'question': 'What\'s your favorite subject?',
      'answers': [
        {'text': 'Data Structures & Algorithms', 'score': 2},
        {'text': 'Programming', 'score': 2},
        {'text': 'PMO', 'score': 1},
        {'text': 'Business Communication', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favorite movie genre?',
      'answers': [
        {'text': 'Science & Technology', 'score': 2},
        {'text': 'Space Adventure', 'score': 2},
        {'text': 'Horror & Thriller', 'score': 1},
        {'text': 'Brainless Comedy', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favorite game?',
      'answers': [
        {'text': 'Cricket', 'score': 1},
        {'text': 'Basketball', 'score': 1},
        {'text': 'Chess', 'score': 2},
        {'text': 'Checkers', 'score': 2}
      ]
    },
  ];

  void _answerPressed(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tech Quiz"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            questionIndex: _questionIndex,
            questions: _questions,
            answerQuestion: _answerPressed,
          )
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
