part of 'questionnaire_bloc.dart';

abstract class QuestionnaireState {
  final Set<String> optionsSelected;

  QuestionnaireState() : optionsSelected = Set();
}

class QuestionnaireLoading extends QuestionnaireState {}

class QuestionnaireLoaded extends QuestionnaireState {
  final Questionnaire questionnaire;

  QuestionnaireLoaded(this.questionnaire);
}

class QuestionnaireComplete extends QuestionnaireState {}
