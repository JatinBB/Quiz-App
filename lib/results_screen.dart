import 'package:flutter/material.dart';
import 'package:qproject2/data/questions.dart';
import 'package:qproject2/question_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });

  final List<String> chosenAnswer;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          QuestionsSummary(summaryData),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.restart_alt),
            label: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
