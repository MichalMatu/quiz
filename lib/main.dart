import 'package:flutter/material.dart';

// main function
void main() {
  // runApp function
  runApp(const MyApp(null));
}

// MyApp class
class MyApp extends StatelessWidget {
  const MyApp(Key? key) : super(key: key);

  void startQuiz() {
    print('Quiz started');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
              ],
              begin: Alignment.topLeft, // Start from the top-left
              end: Alignment.bottomRight, // End at the bottom-right
            ),
          ),
          // Column to stack image and text vertically in the center
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the column
              children: [
                // Image displayed above the text
                Image.asset(
                  'assets/images/quiz-logo.png',
                  fit: BoxFit.cover, // Ensure the image covers the area
                  width: 200, // Set a specific width if needed
                  height: 200, // Set a specific height if needed
                ),
                const SizedBox(height: 24), // Spacer between image and text
                const Text(
                  'Let\'s Quiz',
                  style: TextStyle(
                    fontSize: 32, // Set your desired font size
                    color: Colors.white, // Set the text color
                    fontWeight: FontWeight.bold, // Make it bold
                  ),
                ),
                // Spacer between text and button
                const SizedBox(height: 24),
                // add button qith test StartQuiz in simplest form
                ElevatedButton(
                  onPressed: () {
                    startQuiz();
                  },
                  child: const Text('Start Quiz'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
