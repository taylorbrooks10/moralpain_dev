import 'package:flutter/material.dart';
class SubmittedRoute extends StatelessWidget {
  const SubmittedRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF232D4B),
        title: const Text('Thank you, your response has been recorded. '),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('If you feel you need relief in the moment please click here'),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const ThermometerRoute()),
              //);
            },
            style: ElevatedButton.styleFrom(primary: const Color(0xFF232D4B))),
      ),
    );
  }
}