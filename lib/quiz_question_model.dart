
class QuizQuestionModel {

  final String question;
  final String CorrectAnswer;
  final List<String> options;


  QuizQuestionModel(
      {required this.question,
        required this.CorrectAnswer,
        required this.options});
}