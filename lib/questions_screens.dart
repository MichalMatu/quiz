import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';

import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // streech childrento half of the screen width
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                currentQuestion.text,
                textAlign: TextAlign.center,
                // add padding to the text
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {},
              );
            }),
          ],
        ),
      ),
    );
  }
}
