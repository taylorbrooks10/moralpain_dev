import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moralpain/assets/constants.dart' as Constants;

import '../questionnaire.dart';

class QuestionnaireView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(Constants.COLORS_UVA_BLUE),
          title: const Text(Constants.APPBAR_TEXT),
        ),
        body: new Container(
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Card(
                  child: Column(
                    children: [Text("question 1"), QuestionOptionsWidget()],
                  ),
                ),
                Card(
                  child: Column(
                    children: [Text("question 2"), QuestionOptionsWidget()],
                  ),
                ),

                ElevatedButton(
                    child: const Text(Constants.QUESTIONNAIRE_SUBMIT_BUTTON),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          Constants.QUESTIONNAIRE_TOASTER_MESSAGE,
                          textAlign: TextAlign.center,
                        ),
                        duration: Duration(seconds: 3),
                      ));

                      Future.delayed(const Duration(seconds: 3), () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(Constants.COLORS_UVA_BLUE))),
                //QuestionWidget(),
              ],
            )));
  }
}

//
class QuestionOptionsWidget extends StatefulWidget {
  @override
  QuestionOptionsWidgetState createState() => new QuestionOptionsWidgetState();
}

class QuestionOptionsWidgetState extends State<QuestionOptionsWidget> {
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: values.keys.map((String key) {
        return new CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(key),
          value: values[key],
          onChanged: (bool? value) {
            setState(() {
              values[key] = value!;
            });
          },
        );
      }).toList(),
    );
  }
}
