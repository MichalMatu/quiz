import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns items to the top
                children: [
                  // Question number with better positioning
                  Container(
                    width: 30, // Fixed width for alignment
                    alignment: Alignment
                        .topCenter, // Align the number in the center vertically
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 12), // Space between number and text
                  // Question and answers aligned vertically
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Text("Your Answer: "),
                            Flexible(
                              // To ensure long texts wrap properly
                              child: Text(data['user_answer'] as String),
                            ),
                          ],
                        ),
                        const SizedBox(
                            height:
                                4), // Small space between user and correct answer
                        Row(
                          children: [
                            const Text("Correct Answer: "),
                            Flexible(
                              child: Text(data['correct_answer'] as String),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
