import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Flutter!"),
            leading: Icon(Icons.home),
            actions: [
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
            child: Text(
              "Hello Flutter !",
              style: TextStyle(fontSize: 24),
            ),
          )),
    );
  }
}
