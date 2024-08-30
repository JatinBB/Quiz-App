import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qproject2/data/questions.dart';
import 'package:qproject2/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
    required this.onComplete, // Callback for when quiz is complete
  });

  final void Function(String answer) onSelectAnswer;
  final VoidCallback onComplete; // Callback for navigating to results

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  final Map<int, String?> _selectedAnswers = {}; // Track selected answers

  void answerQuestion(String selectedAnswer) {
    setState(() {
      _selectedAnswers[currentQuestionIndex] = selectedAnswer; // Save selected answer
      widget.onSelectAnswer(selectedAnswer);
    });
  }

  void goToNextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      widget.onComplete(); // Navigate to results when done
    }
  }

  void goToPreviousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    final questionNumber = currentQuestionIndex + 1; // Question number
    final selectedAnswer = _selectedAnswers[currentQuestionIndex]; // Retrieve selected answer

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(65),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question $questionNumber: ${currentQuestion.text}',
              style: GoogleFonts.dmSerifText(
                fontSize: 20,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                isSelected: selectedAnswer == answer, // Pass selection state
                onTap: () => answerQuestion(answer),
              );
            }),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: goToPreviousQuestion,
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: goToNextQuestion,
                  child: Text(
                    currentQuestionIndex < questions.length - 1
                        ? 'Next'
                        : 'Finish',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
