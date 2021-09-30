import 'package:flutter/material.dart';

import '../../thermometer/thermometer.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF232D4B),
        title: const Text('Moral Distress'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Whats your temperature?'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ThermometerRoute()),
              );
            },
            style: ElevatedButton.styleFrom(primary: const Color(0xFF232D4B))),
      ),
    );
  }
}
