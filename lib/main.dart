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
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
