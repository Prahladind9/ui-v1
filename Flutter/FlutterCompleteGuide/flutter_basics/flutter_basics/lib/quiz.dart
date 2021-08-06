import 'package:flutter/material.dart';
import 'package:flutter_basics/question.dart';
import 'package:flutter_basics/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),

          //Pattern - Lifting the state up - we are using
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),

          //spreadOperator  "..."
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => answerQuestion(
                      answer['score'],
                    ),
                answer['text']);
          }).toList()
        ],
      ),
    );
  }
}
