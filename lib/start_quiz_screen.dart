import 'package:flutter/material.dart';
import 'package:quizz_app/const.dart';
import 'package:quizz_app/play_quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "start Quizz",
          style: TextStyle(color: backgroundColor),
        ),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Quizz App",
              style: TextStyle(
                color: foregroundColor,
                fontSize: 45,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayQuizScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: foregroundColor,
              ),
              child: Text(
                "Start Quiz",
                style: TextStyle(color: backgroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
