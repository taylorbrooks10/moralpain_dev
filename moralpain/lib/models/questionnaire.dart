import 'question.dart';

class Questionnaire {
  final List<Question> questions;

  Questionnaire(this.questions);

  Questionnaire.fromJson(List<dynamic> json)
      : questions = List<Question>.from(json.map((x) => Question.fromJson(x)));
}
