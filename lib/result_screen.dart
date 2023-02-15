import 'package:flutter/material.dart';
import 'package:quizz_app/const.dart';
import 'package:quizz_app/play_quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  int correctAnswers, wrongAnswers;

  ResultScreen({
    Key? key,
    required this.correctAnswers,
    required this.wrongAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        iconTheme: IconThemeData(color: backgroundColor),
        centerTitle: true,
        title: Text(
          "result",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("correct answer", correctAnswers),
                answerTab("wong answser", wrongAnswers),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayQuizScreen(),
                  ),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: foregroundColor),
              child: Text(
                "Reset Quizz",
                style: TextStyle(
                  color: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "$value",
          style: TextStyle(
            color: foregroundColor,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
