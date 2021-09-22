import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../questionnaire.dart';
import 'questionnaire_view.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class QuestionnaireRoute extends StatelessWidget {
  /// {@macro counter_page}
  const QuestionnaireRoute({Key? key}) : super(key: key);

  // Make the cubit available to the children.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuestionnaireCubit(List.empty(growable: true)),
      child: QuestionnaireView(),
    );
  }
}
