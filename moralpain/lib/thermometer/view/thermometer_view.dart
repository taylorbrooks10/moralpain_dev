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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Moral Distress Thermometer", style: TextStyle(fontSize: 25)),
            RotatedBox(quarterTurns: -1, child: ThermometerWidget()),
            Text("<Text Here>", style: TextStyle(fontSize: 14)),
            ElevatedButton(
                child: const Text('Continue to Questions'),
                onPressed: () {
                  //Navigator.push(
                  //  context,
                  //  MaterialPageRoute(
                  //      builder: (context) => const ThermometerRoute()),
                  //);
                },
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xFF232D4B))),
          ]),
    );
  }
}
