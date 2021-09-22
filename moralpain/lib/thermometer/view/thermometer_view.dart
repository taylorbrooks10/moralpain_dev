import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moralpain/questionnaire/questionnaire.dart';

import 'package:moralpain/assets/constants.dart' as Constants;
import '../thermometer.dart';
import 'themometer_slider.dart';

// TODO (nphair): Handle Rotation Overflow.

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class ThermometerView extends StatelessWidget {
  var x = 0.0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(Constants.COLORS_UVA_BLUE),
        title: const Text(Constants.APPBAR_TEXT),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Constants.THERMOMETER_TITLE, style: TextStyle(fontSize: 25)),
            Text(
              Constants.THERMOMETER_INSTRUCTIONS,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            RotatedBox(quarterTurns: -1, child: ThermometerWidget()),
            ElevatedButton(
                child: const Text(Constants.THERMOMETER_NEXT_BUTTON),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionnaireRoute()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(Constants.COLORS_UVA_BLUE))),
          ]),
    );
  }
}
