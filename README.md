# Flutter Quiz App

## Overview

The Flutter Quiz App is a mobile application designed to test users' knowledge on Flutter-related questions. The app features a series of questions with multiple-choice answers, tracks user responses, and provides a summary of results at the end of the quiz. It showcases a clean and interactive user interface using Flutter's widgets and features.

## Objective

The primary objective of this project is to create a dynamic and engaging quiz application using Flutter. It aims to:

- Test users' knowledge of Flutter.
- Provide a user-friendly interface for quiz interactions.
- Offer immediate feedback on quiz performance.
- Enable users to restart the quiz and review their answers.

## Features

- **Question Display**: Presents questions with multiple-choice answers.
- **Answer Selection**: Allows users to select and submit answers.
- **Navigation**: Facilitates moving between questions and submitting the quiz.
- **Results Summary**: Displays the user's performance and correct answers after completion.
- **Restart Functionality**: Enables users to restart the quiz and take it again.

## Technology Stack

- **Flutter**: Framework for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Dart**: Programming language used for writing the Flutter application.
- **Google Fonts**: Provides custom fonts for a stylish and modern UI.
- **Material Design**: Utilized for implementing UI components and visual elements.

## Architecture

The app follows a modular architecture with the following key components:

- **`main.dart`**: The entry point of the application that initializes the app and handles screen navigation.
- **`Quiz`**: Manages the overall state of the quiz, including question navigation and answer selection.
- **`QuestionsScreen`**: Displays individual questions and handles user interactions.
- **`ResultsScreen`**: Shows the summary of quiz results and allows restarting the quiz.
- **`StartScreen`**: The initial screen where users can start the quiz.
- **`QuestionIdentifiers`**: Displays visual indicators for each question's result.
- **`SummaryItem`**: Shows detailed information for each question in the results summary.
- **`QuestionsSummary`**: Provides a scrollable summary of all questions and answers.

## Installation

To set up and run the Flutter Quiz App locally, follow these steps:

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/flutter-quiz-app.git
    ```

2. **Navigate to the Project Directory**:
    ```bash
    cd flutter-quiz-app
    ```

3. **Install Dependencies**:
    ```bash
    flutter pub get
    ```

4. **Run the Application**:
    ```bash
    flutter run
    ```

5. **Build the Application** (for production):
    ```bash
    flutter build apk
    ```

## Usage

- **Starting the Quiz**: Click on the "Start Quiz" button on the start screen.
- **Answering Questions**: Select an answer and proceed to the next question using the provided buttons.
- **Viewing Results**: After completing the quiz, review your answers and results on the results screen.
- **Restarting the Quiz**: Click on the "Restart Quiz!" button to retake the quiz.
