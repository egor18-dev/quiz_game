class QuizModel {
  final String question;
  final String correct;
  final List<String> wrong;

  QuizModel(
      {required this.question, required this.correct, required this.wrong});
}
