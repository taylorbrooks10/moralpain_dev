import 'dart:math';
import 'package:flutter/material.dart';
import 'package:moralpain/thermometer/view/painter1.dart';

class ThermometerSliderTrackShape extends SliderTrackShape {
  /// Create a slider track that draws 2 rectangles.
  const ThermometerSliderTrackShape({this.disabledThumbGapWidth = 2.0});

  /// Horizontal spacing, or gap, between the disabled thumb and the track.
  ///
  /// This is only used when the slider is disabled. There is no gap around
  /// the thumb and any part of the track when the slider is enabled. The
  /// Material spec defaults this gap width 2, which is half of the disabled
  /// thumb radius.
  final double disabledThumbGapWidth;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = true,
  }) {
    final double overlayWidth =
        sliderTheme.overlayShape!.getPreferredSize(isEnabled, isDiscrete).width;
    final double trackHeight = sliderTheme.trackHeight!;
    assert(overlayWidth >= 0);
    assert(trackHeight >= 0);
    assert(parentBox.size.width >= overlayWidth);
    assert(parentBox.size.height >= trackHeight);

    final double trackLeft = offset.dx + overlayWidth / 2;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    // TODO(clocksmith): Although this works for a material, perhaps the default
    // rectangular track should be padded not just by the overlay, but by the
    // max of the thumb and the overlay, in case there is no overlay.
    final double trackWidth = parentBox.size.width - overlayWidth;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(PaintingContext context, Offset offset,
      {required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required Animation<double> enableAnimation,
      required Offset thumbCenter,
      bool isEnabled = false,
      bool isDiscrete = true,
      required TextDirection textDirection}) {
    // If the slider track height is 0, then it makes no difference whether the
    // track is painted or not, therefore the painting can be a no-op.
    if (sliderTheme.trackHeight == 0) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    print('trackrect: ${trackRect.size}');
    print('parentrect: ${parentBox.size}');
    print('offset: dx = ${offset.dx} dy = ${offset.dy}');

    print(parentBox.paintBounds.bottom);
    final paint = Paint()..color = Colors.indigo;
    final paint2 = Paint()..color = Colors.black;

    context.canvas.drawRRect(
        RRect.fromLTRBAndCorners(
            offset.dx, offset.dy, parentBox.size.width, parentBox.size.height),
        paint);

    context.canvas.drawRRect(
        RRect.fromLTRBAndCorners(offset.dx, offset.dy, parentBox.size.width / 2,
            parentBox.size.height),
        paint2);

    //var size = Size(100, 10);
    //RPSCustomPainter().paint(1, context.canvas, parentBox.size);
  }
}

class ThermometerWidget extends StatefulWidget {
  final double sliderHeight;
  final int min;
  final int max;

  ThermometerWidget({
    this.sliderHeight = 48,
    this.max = 10,
    this.min = 0,
  });

  @override
  _ThermometerWidgetState createState() => _ThermometerWidgetState();
}

class _ThermometerWidgetState extends State<ThermometerWidget> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        //trackHeight: trackHeight,
        //activeTrackColor: Colors.white,
        trackShape: ThermometerSliderTrackShape(),
        //thumbColor: Colors.white,
        //overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
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
    );
  }
}
