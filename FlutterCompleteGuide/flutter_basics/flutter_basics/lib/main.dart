import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
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
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex +1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //const - compile time constant
    //final - run time constant

    const questions = [
      {'questionText':'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {'questionText':'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Lion', 'Elephant']
      },
      {'questionText':'What\'s your favourite instructor?',
        'answers': ['Rao', 'Rao', 'Rao', 'Rao']
      }
      ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),

            //Pattern - Lifting the state up - we are using
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),

            //spreadOperator  "..."
          ...(questions[_questionIndex]['answers'] as List<String>)
                .map(
                  (answer) {return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
