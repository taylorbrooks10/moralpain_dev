import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:moralpain/assets/constants.dart' as Constants;
import 'package:moralpain/models/questionnaire.dart';

class QuestionnaireRepository {
  Future<Questionnaire> fetchDefaultQuestionnaire() async =>
      fetchQuestionnaire(Constants.QUESTIONNAIRE_QUESTIONNAIRE_PATH);

  Future<Questionnaire> fetchQuestionnaire(String path) async {
    var json = await rootBundle.loadString(path).then(jsonDecode);

    return Questionnaire.fromJson(json);
  }
}
