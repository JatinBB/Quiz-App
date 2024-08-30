import 'package:flutter/material.dart';
import 'package:qproject2/questions_screen.dart';
import 'package:qproject2/results_screen.dart';
import 'package:qproject2/start_screen.dart';
import 'package:qproject2/data/questions.dart';  // Import the questions data

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String?> selectedAnswers = List.filled(questions.length, null);
  var activeScreen = 'start-screen';
  int currentQuestionIndex = 0;

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers[currentQuestionIndex] = answer;
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        setState(() {
          activeScreen = 'result-screen';
        });
      }
    });
  }

  void goToPreviousQuestion() {
    setState(() {
      if (currentQuestionIndex > 0) {
        currentQuestionIndex--;
      }
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = List.filled(questions.length, null);
      activeScreen = 'start-screen';
      currentQuestionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;

    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        onComplete: () {
          setState(() {
            activeScreen = 'result-screen';
          });
        },
      );
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswer: selectedAnswers.whereType<String>().toList(),
        onRestart: restartQuiz,
      );
    } else {
      screenWidget = const Center(child: Text('Unknown screen'));
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 35, 126),
                Color.fromARGB(255, 92, 107, 192),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
