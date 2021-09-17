import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../thermometer.dart';
import 'themometer_slider.dart';

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
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        // Return a text widget on respnse to the themometer change.
        child: BlocBuilder<ThermometerCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ThermometerWidget(),
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<ThermometerCubit>().set(2),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
