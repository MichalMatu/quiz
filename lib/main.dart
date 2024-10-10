// import material.dart file
import 'package:flutter/material.dart';

// main function
void main() {
  // runApp function
  runApp(const MyApp(null));
}

// MyApp class

class MyApp extends StatelessWidget {
  const MyApp(Key? key) : super(key: key);

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
            ),
          ),
          // add image on top of the gradient
          child: Stack(
            children: [
              Image.asset('assets/images/quiz-logo.png'),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  // background color transparent
                  backgroundColor: Colors.transparent,
                ),
                body: const Center(
                  child: Text('Hello World'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
