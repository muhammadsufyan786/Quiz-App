import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

import 'Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final  Function answerQuestion;
  final int questionIndex;

  Quiz({required this.questions, required this.answerQuestion, required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Questions(
        questions![questionIndex]['questionText'] as String,
      ),
      ...(questions![questionIndex]['answer'] as List<Map<String,Object>>)
          .map(
            (answer) => Answer(()=>answerQuestion(answer['score']) , answer['text'] as String),
          )
          .toList(),
    ]
    );
  }
}
