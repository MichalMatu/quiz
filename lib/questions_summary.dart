import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object?>>
      summaryData; // Change Object to Object? to allow null values.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int?) ?? 0 + 1)
                .toString()), // Add null check
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align texts to start
              children: [
                Text(data['question'] as String? ??
                    'No question'), // Add null check
                const SizedBox(
                  height: 5,
                ),
                Text(data['user_answer'] as String? ??
                    'No answer'), // Add null check
                Text(data['correct_answer'] as String? ??
                    'No correct answer'), // Add null check
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
