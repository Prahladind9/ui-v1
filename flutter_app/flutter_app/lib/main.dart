import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}

String englishGreeting = "Hello Flutter !";
String otherGreeting = "Hiyo Flutter !";

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  String displayText = englishGreeting;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Flutter App"),
            leading: Icon(Icons.home),
            actions: [
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    displayText =
                        displayText == englishGreeting ?
                        otherGreeting :
                            englishGreeting;
                  });
                },
              ),
            ],
          ),
          body: Center(
            child: Text(
              displayText,
              //SOLUTION #2: Making Text Bold
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

              //SOLUTION #3: Making Text Bigger
              //style: TextStyle(fontSize: 48, fontWeight: FontWeight.normal),
            ),
          )),
    );
  }
}
