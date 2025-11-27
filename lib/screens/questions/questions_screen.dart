import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text, style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),),
          SizedBox(height: 30),
          AnswerButton(answerText: currentQuestion.answers[0], onTap: (){}),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: (){}),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: (){}),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: (){}),
        ],
      ),
    );
  }

}