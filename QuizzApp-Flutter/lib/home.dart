import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];

  List<String> questions = [
    'Bannana is seedless fruit.',
    'Cow has 5 Legs.',
    'Moon is Black.',
    'sun is a star.',
    '12 is grather then 14.',
    'You have 3 eyes.',
    'Ganga is not a River.',
    'Blood is Red.',
    'Apple is Red.',
    'Bicycle has 6 wheels',
  ];

  List<bool> answers = [
    true,
    false,
    false,
    true,
    false,
    false,
    false,
    true,
    true,
    false,
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, onPrimary: Colors.black),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.

                if (questionNumber == questions.length - 1) {
                  Alert(
                          context: context,
                          title: "Questions Finished",
                          desc: "Good Job.")
                      .show();
                } else {
                  bool correctanswer = answers[questionNumber];
                  if (correctanswer == true) {
                    scorekeeper.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    scorekeeper.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                }

                setState(() {
                  if (questionNumber < questions.length - 1) {
                    questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, onPrimary: Colors.black),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.

                if (questionNumber == questions.length - 1) {
                  Alert(
                          context: context,
                          title: "Questions Finished",
                          desc: "Good Job.")
                      .show();
                } else {
                  bool correctanswer = answers[questionNumber];
                  if (correctanswer == false) {
                    scorekeeper.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    scorekeeper.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                }
                setState(() {
                  if (questionNumber < questions.length - 1) {
                    questionNumber++;
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
        //TODO: Add a Row here as your score keeper
      ],
    );
  }
}

/*
question1: 'Bannana is a seedless fruit.', true,
question2: 'Cow has 5 legs.', flase,
question3: 'You are fool.', false,
*/






/////JAY SHAH////
