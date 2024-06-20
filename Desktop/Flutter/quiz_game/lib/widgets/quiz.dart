import 'package:flutter/material.dart';
import 'package:quiz_game/models/quiz_model.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<QuizModel> quizModels = [
    new QuizModel(
        question: "¿Pueden nadar los gorilas?",
        correct: "Si",
        wrong: ["No", "Puede ser", "demas"]),
    new QuizModel(
        question: "¿Cuál es el ojo defectuoso de Popeye?",
        correct: "el derecho",
        wrong: ["No", "Puede ser", "demas"])
  ];
  int _actualIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  quizModels[_actualIndex].question,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _actualIndex = _actualIndex + 1;
                  });
                },
                child: Text('Hola'))
          ],
        ),
      )),
    );
  }
}
