import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int? questionIndex;
  final List<Map<String, Object>>? questions;
  final Function answerQuestion;

  Quiz({
    this.questionIndex,
    this.questions,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions![questionIndex!]['question'].toString()),
        SizedBox(height: 20),
        ...(questions![questionIndex!]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
                () => answerQuestion(answer["score"]),
            answer['text'].toString(),
          );
        }).toList(),
      ],
    );
  }
}
