import 'package:flutter/material.dart';
import 'package:flutter_basics/Result.dart';
import 'package:flutter_basics/quiz.dart';

/*void main(){
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore +=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //const - compile time constant
    //final - run time constant

    const _questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 2},
          {'text': 'White', 'score': 1},
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 10},
          {'text': 'Snake', 'score': 5},
          {'text': 'Elephant', 'score': 1},
          {'text': 'Lion', 'score': 2},
        ]
      },
      {
        'questionText': 'What\'s your favourite instructor?',
        'answers': [
          {'text': 'Rao', 'score': 10},
          {'text': 'Rao', 'score': 5},
          {'text': 'Rao', 'score': 2},
          {'text': 'Rao', 'score': 1},
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
