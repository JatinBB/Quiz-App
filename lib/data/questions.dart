import 'package:qproject2/models/quiz_question.dart';

const questions = [
  QuizQuestion('What are the main building blocks of flutter UI ?',[
    'Widgets', 
    'Components', 
    'Blocks', 
    'Functions'
  ]),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ]),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ]),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ]),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ]),
  QuizQuestion('What is Flutter?', [
    'A UI toolkit for building natively compiled applications',
    'A database management tool',
    'A web development framework',
    'An IDE for mobile development',
  ]),
  QuizQuestion('Which programming language is used to code Flutter apps?', [
    'Dart',
    'JavaScript',
    'Python',
    'Swift',
  ]),
  QuizQuestion('What is the purpose of the pubspec.yaml file in a Flutter project?', [
    'To manage project dependencies',
    'To define UI components',
    'To store app data',
    'To configure device settings',
  ]),
  QuizQuestion('Which widget is used to create an AppBar in Flutter?', [
    'AppBar',
    'Toolbar',
    'Header',
    'TitleBar',
  ]),
  QuizQuestion('What does the BuildContext class in Flutter represent?', [
    'The location in the widget tree where a widget builds its UI',
    'The main entry point of a Flutter app',
    'The style configuration of the app',
    'The state management mechanism in Flutter',
  ]),
  QuizQuestion('How can you create a scrollable list in Flutter?', [
    'Using the ListView widget',
    'Using the GridView widget',
    'Using the ScrollableList widget',
    'Using the Column widget',
  ]),
  QuizQuestion('Which widget is used to display images in Flutter?', [
    'Image',
    'Picture',
    'Graphics',
    'Drawable',
  ]),
  QuizQuestion('What does the setState() method do in Flutter?', [
    'Updates the UI by calling the build method',
    'Initializes the state of a StatefulWidget',
    'Rebuilds the entire widget tree',
    'Cleans up resources when a widget is disposed of',
  ]),
  QuizQuestion('Which of the following is true about StatelessWidget?', [
    'It does not hold any mutable state',
    'It can hold mutable state',
    'It can rebuild its UI based on external inputs',
    'It is used for complex, interactive UIs',
  ]),
  QuizQuestion('What is the purpose of the Navigator class in Flutter?', [
    'To manage routes and control navigation between screens',
    'To define the structure of the app',
    'To create custom animations',
    'To handle state management',
  ]),
  QuizQuestion('How do you create a rounded button in Flutter?', [
    'Using the RoundedRectangleBorder with ElevatedButton',
    'Using the FlatButton widget',
    'Using the CircularButton widget',
    'Using the RoundButton widget',
  ]),
  QuizQuestion('Which widget is used to show a progress indicator in Flutter?', [
    'CircularProgressIndicator',
    'LoadingBar',
    'ProgressWidget',
    'Loader',
  ]),
  QuizQuestion('How do you add padding to a widget in Flutter?', [
    'Using the Padding widget',
    'Using the Margin widget',
    'Using the Container widget',
    'Using the Spacer widget',
  ]),
  QuizQuestion('What is the purpose of the initState() method in a StatefulWidget?', [
    'To initialize the state of the widget',
    'To build the widget UI',
    'To handle widget disposal',
    'To manage widget events',
  ]),
  QuizQuestion('Which widget is used to create a grid layout in Flutter?', [
    'GridView',
    'ListView',
    'Column',
    'Table',
  ]),
  QuizQuestion('How do you handle user input in a TextField in Flutter?', [
    'Using a TextEditingController',
    'Using a TextController',
    'Using a TextManager',
    'Using a TextHandler',
  ]),
  QuizQuestion('What is the difference between hot reload and hot restart in Flutter?', [
    'Hot reload preserves the app state, hot restart does not',
    'Hot restart is faster than hot reload',
    'Hot reload rebuilds the entire app, hot restart does not',
    'Hot restart preserves the app state, hot reload does not',
  ]),
  QuizQuestion('How can you make a widget visible or invisible in Flutter?', [
    'Using the Visibility widget',
    'Using the Hidden widget',
    'Using the Display widget',
    'Using the Opacity widget',
  ]),
  QuizQuestion('Which widget is commonly used for layout design in Flutter?', [
    'Column',
    'Row',
    'Stack',
    'All of the above',
  ]),
  QuizQuestion('How do you display a snackbar in Flutter?', [
    'Using the ScaffoldMessenger with showSnackBar()',
    'Using the SnackBarWidget',
    'Using the AlertDialog',
    'Using the Popup widget',
  ]),
  QuizQuestion('Which widget is used to detect gestures in Flutter?', [
    'GestureDetector',
    'TouchListener',
    'PointerDetector',
    'SwipeDetector',
  ]),
  QuizQuestion('What is the purpose of the setState method?', [
    'To update the UI by triggering a rebuild',
    'To dispose of a widget\'s resources',
    'To navigate between screens',
    'To store data permanently',
  ]),
  QuizQuestion('What is SafeArea used for in Flutter?', [
    'To prevent the UI from overlapping with system UI elements',
    'To create a secure area for user data',
    'To handle background tasks',
    'To protect widgets from being disposed of',
  ]),
  QuizQuestion('What is the SingleChildScrollView widget used for?', [
    'To make a single widget scrollable',
    'To create a scrollable list',
    'To display one item at a time',
    'To manage a grid layout',
  ]),
  QuizQuestion('How can you manage the state of a widget in Flutter?', [
    'Using StatefulWidget and setState',
    'Using StatelessWidget and initState',
    'Using Navigator and routes',
    'Using StreamBuilder',
  ]),
  QuizQuestion('What is the purpose of the AnimatedBuilder widget?', [
    'To animate changes to a widget\'s appearance',
    'To create a custom animation',
    'To build widgets on demand',
    'To delay the display of widgets',
  ]),
  QuizQuestion('How do you create a floating action button in Flutter?', [
    'Using the FloatingActionButton widget',
    'Using the ElevatedButton widget',
    'Using the FlatButton widget',
    'Using the ActionButton widget',
  ]),
  QuizQuestion('What is the primary use of the FutureBuilder widget?', [
    'To build a widget based on the state of a Future',
    'To create a new screen in the app',
    'To display a list of items',
    'To manage asynchronous tasks',
  ]),
  QuizQuestion('Which widget is used to create a dropdown menu in Flutter?', [
    'DropdownButton',
    'PopupMenuButton',
    'SelectButton',
    'ComboBox',
  ]),
  QuizQuestion('What is the function of MediaQuery in Flutter?', [
    'To obtain information about the screen size and orientation',
    'To manage media files in the app',
    'To control the volume and brightness',
    'To query for available media content',
  ]),
  QuizQuestion('How do you add an icon to a button in Flutter?', [
    'Using Icon widget as a child of the button',
    'Using IconData directly on the button',
    'Using IconButton widget',
    'Adding it in pubspec.yaml',
  ]),
];