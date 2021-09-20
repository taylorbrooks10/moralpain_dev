import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        backgroundColor: const Color(0xFF232D4B),
        title: const Text('Moral Distress Survey'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text("Moral Distress Thermometer", style: TextStyle(fontSize: 25)),
            const SizedBox(height: 75),
            BlocBuilder<ThermometerCubit, int>(
              builder: (context, state) {
                return RotatedBox(quarterTurns: -1, child: ThermometerWidget());
              },
            ),
            const SizedBox(height: 100),
          ]),
      //floatingActionButton: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.center,
      //  children: <Widget>[
      //    ThermometerWidget(),
      //    FloatingActionButton(
      //      key: const Key('counterView_increment_floatingActionButton'),
      //      child: const Icon(Icons.add),
      //      onPressed: () => context.read<ThermometerCubit>().set(2),
      //    ),
      //    const SizedBox(height: 8),
      //  ],
      //),
    );
  }
}
