import 'package:flutter/material.dart';
import 'package:quiz_app/result/resultscreen.dart';
import 'package:quiz_app/screens/home/firstpage.dart';
import 'package:quiz_app/screens/quiz/quizpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'first',
    routes: {
      'first':(context) => const HomePage(),
      'quiz':(context) => const QuizPage(),
      'result':(context) => ResultScreen()
    }
  ));
}
