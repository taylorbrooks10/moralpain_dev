import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:moralpain/models/questionnaire.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class QuestionnaireCubit extends Cubit<Questionnaire> {
  List<String> optionsSelected;

  /// {@macro counter_cubit}
  QuestionnaireCubit(this.optionsSelected)
      : super(Questionnaire.fromJson(jsonDecode("[]")));

  //void set(double val) => emit(val);
}
