import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // add image here
          Image.asset('assets/images/quiz-logo.png',
              width: 200,
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255)),
          const SizedBox(height: 20),
          Text(
            'Quiz App',
            style: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // use play button here
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text('Play Quiz', style: GoogleFonts.lato(fontSize: 40)),
            icon: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
