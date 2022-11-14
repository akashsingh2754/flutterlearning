import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionindex = 0;

  void answerquestion() {
    setState(() {
      questionindex = questionindex + 1;
    });

    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your faviourate colour',
      'what\'s your faviourate food',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: [
            Text(questions[questionindex]),
            ElevatedButton(
              onPressed: answerquestion,
              child: Text('button 1'),
            ),
            ElevatedButton(
              onPressed: answerquestion,
              child: Text('button 2'),
            ),
            ElevatedButton(
              onPressed: answerquestion,
              child: Text('button 3'),
            ),
          ],
        ),
      ),
    );
  }

  int get newMethod => questionindex;
}
