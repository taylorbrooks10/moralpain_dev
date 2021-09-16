import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UVA's Moral Distress Survey",
      home: HomeRoute()));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF232D4B),
        title: const Text('Moral Distress Survey'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Take the Moral Distress Survey'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MDTRoute()),
              );
            },
            style: ElevatedButton.styleFrom(primary: const Color(0xFF232D4B))),
      ),
    );
  }
}

class MDTRoute extends StatelessWidget {
  const MDTRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF232D4B),
          title: const Text("Please Rate your Moral Distress"),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
          child: Column(
            children: [
              SliderWidget(
                sliderHeight: 100,
              ),

              // Spacing.
              SizedBox(height: 20),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionaireRoute()),
                    );
                  },
                  child: const Text('Next'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF232D4B)))
            ],
          ),
        ));
  }
}

class QuestionaireRoute extends StatelessWidget {
  const QuestionaireRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF232D4B),
        title: const Text('Questionaire'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  'Thank You - Your response has been recorded.',
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 3),
              ));

              // TODO (nphair): Is a delay necessary?
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pop(context);
                Navigator.pop(context);
              });
            },
            style: ElevatedButton.styleFrom(primary: const Color(0xFF232D4B))),
      ),
    );
  }
}

// NB (nphair): Temporary slider widget cribbed from here:
// https://medium.com/flutter-community/flutter-sliders-demystified-4b3ea65879c
// TODO (nphair): Decide if this needs to literally be a thermometer.
class SliderWidget extends StatefulWidget {
  final double sliderHeight;
  final int min;
  final int max;

  SliderWidget({
    this.sliderHeight = 48,
    this.max = 10,
    this.min = 0,
  });

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    double paddingFactor = .2;

    var container = Container(
      // Build out the surrounding container.
      width: widget.sliderHeight * 5.5,
      height: widget.sliderHeight,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(widget.sliderHeight * .3)),
        gradient: const LinearGradient(
            // NB (nphair): Picked a gradient from brewer but probably want something else.
            colors: [
              Color(0xff2c7bb6),
              Color(0xffabd9e9),
              Color(0xffffffbf),
              Color(0xfffdae61),
              Color(0xffd7191c),
            ],
            begin: FractionalOffset(0.1, 0.1),
            end: FractionalOffset(0.8, 0.80),
            tileMode: TileMode.clamp),
      ),

      // Nest a slider in the container.
      child: Padding(
        padding: EdgeInsets.fromLTRB(widget.sliderHeight * paddingFactor, 2,
            widget.sliderHeight * paddingFactor, 2),
        child: Row(
          children: <Widget>[
            // Min Slider Value Text.
            RotatedBox(
                quarterTurns: 1,
                child: Text(
                  '${widget.min}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: widget.sliderHeight * .3,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),

            // Spacing.
            SizedBox(width: widget.sliderHeight * .1),

            // Slider.
            Expanded(
              child: Center(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white.withOpacity(1),
                    inactiveTrackColor: Colors.white.withOpacity(.5),
                    trackHeight: 4.0,
                    overlayColor: Colors.white.withOpacity(.4),
                    valueIndicatorColor: Colors.white,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.black.withOpacity(.7),
                  ),
                  child: Slider(
                      value: _value,
                      min: 0,
                      max: 10,
                      divisions: 10,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),

            // Spacing.
            SizedBox(width: widget.sliderHeight * .1),

            // Max Slider Value Text.
            RotatedBox(
                quarterTurns: 1,
                child: Text(
                  '${widget.max}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: widget.sliderHeight * .3,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );

    return RotatedBox(quarterTurns: 3, child: container);
  }
}
