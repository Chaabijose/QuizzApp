import 'package:flutter/material.dart';
import 'package:quizz_app/screens/questions/questions_screen.dart';

import '../screens/home/home_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen' ;


  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 28, 65, 120), Color.fromARGB(
                  255, 127, 159, 154),
            ]),
          ),
          child: activeScreen == 'start-screen' ? HomeScreen(switchScreen) : QuestionsScreen(),
        ),
      ),
    );
  }
}