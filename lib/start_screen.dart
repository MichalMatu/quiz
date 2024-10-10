import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // add image here
          Image.asset('assets/images/quiz-logo.png', width: 200, height: 200),
          const SizedBox(height: 20),
          const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // use play button here
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
