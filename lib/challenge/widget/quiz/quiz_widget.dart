import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widget/answer/answer_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool>  onSelected;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected
  }) : super(key: key);

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Text(
              widget.question.title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 24,
            ),
            for(var i = 0; i < widget.question.answers.length; i++)
              AnswerWidget(
                answer: answer(i),
                disabled: indexSelected != -1,
                isSelected: indexSelected == i,
                onTap: (value) {
                  widget.onSelected(value);
                  indexSelected = i;
                  setState(() {});
                },
              ),
          ],
        ),
      ),
    );
  }
}