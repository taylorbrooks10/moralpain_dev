import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:moralpain/models/questionnaire.dart';

void main() {
  test('Decode Questionnaire', () {
    var json = '''[
      { 
        "sectionId": "123", 
        "title": "Star Wars: Episode IV",
        "subtitle": "A New Hope",
        "options": {
          "123_01": "foo",
          "123_02": "bar"
        }
      },
      { 
        "sectionId": "124", 
        "title": "Star Wars: Episode V",
        "subtitle": "The Empire Strikes Back",
        "options": {
          "124_01": "foo",
          "124_02": "bar"
        }
      }
    ]''';

    var decoded = jsonDecode(json);
    var questionnaire = Questionnaire.fromJson(decoded);

    expect(questionnaire.questions.length, 2);
    expect(questionnaire.questions.first.title, "Star Wars: Episode IV");
    expect(questionnaire.questions.last.title, "Star Wars: Episode V");
  });
}
