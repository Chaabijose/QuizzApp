import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.asset('assets/images/quiz-logo.png', width: 300),
          ),
          SizedBox(height: 50),
          Text(
            'Learn flutter the fun way !',
            style: GoogleFonts.lato(
              fontSize: 24,
              color: Color.fromARGB(255, 207, 179, 239),
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 207, 179, 239),
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}