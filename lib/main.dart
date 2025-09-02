import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() =>
      _QuizPageState();
}

class _QuizPageState
    extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int correctAnswers = 0;

  void checkAnswer(
    bool userPickedAnswer,
  ) {
    if (quizBrain.isFinished()) {
      Alert(
        context: context,
        title: 'Finished!',
        desc:
            'Your score is $correctAnswers / ${quizBrain.getTotalQuestions()}',
      ).show();

      setState(() {
        quizBrain.reset();
        scoreKeeper = [];
        correctAnswers = 0;
      });
    } else {
      setState(() {
        if (quizBrain
                .getQuestionAnswer() ==
            userPickedAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          correctAnswers++;
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizBrain.nextQuestion();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(
              10.0,
            ),
            child: Center(
              child: Text(
                quizBrain
                    .getQuestionText(),
                textAlign:
                    TextAlign.center,
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
            padding: EdgeInsets.all(
              15.0,
            ),
            child: TextButton(
              style:
                  TextButton.styleFrom(
                    backgroundColor:
                        Colors.green,
                    foregroundColor:
                        Colors.white,
                    textStyle:
                        TextStyle(
                          fontSize:
                              20.0,
                        ),
                  ),
              child: Text('True'),
              onPressed: () {
                // The user picked true
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              15.0,
            ),
            child: TextButton(
              style:
                  TextButton.styleFrom(
                    backgroundColor:
                        Colors.red,
                    foregroundColor:
                        Colors.white,
                    textStyle:
                        TextStyle(
                          fontSize:
                              20.0,
                        ),
                  ),
              child: Text('False'),
              onPressed: () {
                // The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),

        Row(children: scoreKeeper),
      ],
    );
  }
}
