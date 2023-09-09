import 'package:quiz_app/models/quiz_questions.dart';

const questions = [

  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),

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
    ],
  ),

  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),

  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),

  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),

  QuizQuestion(
    'When building for iOS, Flutter is restricted to an _____ compilation strategy',
    [
      'AOT (ahead-of-time)',
      'JIT (Just-in-time)',
      'Transcompilation',
      'Recompilation',
    ]
  ),
  
  QuizQuestion(
    'What widget would you use for repeating content in Flutter?',
    [
      'ListView',
      'Stack',
      'ArrayView',
      'ExpandedView'
    ]
  ),

  QuizQuestion(
    'What command would you run to verify your Flutter install and ensure your environment is set up correctly?',
    [
      'Flutter doctor',
      'Flutter run',
      'Flutter build',
      'Flutter help'
    ]
  ),

  QuizQuestion(
    'What is the purpose of the MaterialApp widget in Flutter?',
    [
      'To provide a set of material design widgets',
      'To manage the state of the application',
      'To define the layout of the user interface',
      'To handle user input'
    ]
  ),
];