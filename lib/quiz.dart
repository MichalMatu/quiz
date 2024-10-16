import 'package:flutter/material.dart';
import 'start_screen.dart';
import 'questions_screens.dart';
import 'data/questions.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void choosedAnswer(String answer) {
    selectedAnswer.add(answer);
    //comparre length of selectedAnswer with questions length
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer.clear(); // Clear the selected answers
      activeScreen = 'start-screen'; // Go back to the start screen
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        choosedAnswer: choosedAnswer,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        selectedAnswer: selectedAnswer,
        onRestart: restartQuiz, // Pass the restart function here
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 58, 141, 208),
                Color.fromARGB(255, 72, 93, 231),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
