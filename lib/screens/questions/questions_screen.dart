import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("The question...", style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),),
          SizedBox(height: 30),
          AnswerButton(answerText: 'Answer 1', onTap: (){}),
          AnswerButton(answerText: 'Answer 2', onTap: (){}),
          AnswerButton(answerText: 'Answer 3', onTap: (){}),
        ],
      ),
    );
  }

}