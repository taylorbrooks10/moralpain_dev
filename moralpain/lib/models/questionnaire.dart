import 'question.dart';

class Questionnaire {
  final List<Question> questions;

  Questionnaire() : questions = List.empty(growable: true);

  Questionnaire.fromQuestions(this.questions);

  Questionnaire.fromJson(List<dynamic> json)
      : questions = List<Question>.from(json.map((x) => Question.fromJson(x)));
}
