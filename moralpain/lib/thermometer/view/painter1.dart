import 'dart:ui';

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter {
  void paint(int level, Canvas canvas, Size size) {
    if (level == 0) {
      paint1(canvas, size);
    } else {
      paint2(canvas, size);
    }
  }

  void paint1(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8706000, size.height * 0.3468500);
    path_0.cubicTo(
        size.width * 0.8526000,
        size.height * 0.3327000,
        size.width * 0.8244000,
        size.height * 0.3268500,
        size.width * 0.7974500,
        size.height * 0.3286000);
    path_0.cubicTo(
        size.width * 0.7766500,
        size.height * 0.3299000,
        size.width * 0.7594000,
        size.height * 0.3303000,
        size.width * 0.7472000,
        size.height * 0.3377000);
    path_0.cubicTo(
        size.width * 0.6914000,
        size.height * 0.3715500,
        size.width * 0.6863500,
        size.height * 0.5553500,
        size.width * 0.7563000,
        size.height * 0.5844000);
    path_0.cubicTo(
        size.width * 0.9050000,
        size.height * 0.6462000,
        size.width * 0.9591500,
        size.height * 0.4169000,
        size.width * 0.8706000,
        size.height * 0.3468500);
    path_0.close();
    path_0.moveTo(size.width * 0.6466500, size.height * 0.5387500);
    path_0.cubicTo(
        size.width * 0.5985000,
        size.height * 0.4828000,
        size.width * 0.5646500,
        size.height * 0.4047000,
        size.width * 0.4685000,
        size.height * 0.4199500);
    path_0.cubicTo(
        size.width * 0.3832000,
        size.height * 0.4335500,
        size.width * 0.3723000,
        size.height * 0.5034500,
        size.width * 0.3268500,
        size.height * 0.5524500);
    path_0.cubicTo(
        size.width * 0.2728500,
        size.height * 0.6106500,
        size.width * 0.1716000,
        size.height * 0.6533500,
        size.width * 0.1486500,
        size.height * 0.7443500);
    path_0.cubicTo(
        size.width * 0.1319000,
        size.height * 0.8108000,
        size.width * 0.1544500,
        size.height * 0.8889500,
        size.width * 0.1943000,
        size.height * 0.9180000);
    path_0.cubicTo(
        size.width * 0.2726000,
        size.height * 0.9748500,
        size.width * 0.4180000,
        size.height * 0.9117500,
        size.width * 0.5233000,
        size.height * 0.9225000);
    path_0.cubicTo(
        size.width * 0.5863000,
        size.height * 0.9290000,
        size.width * 0.6345500,
        size.height * 0.9511500,
        size.width * 0.6832000,
        size.height * 0.9500000);
    path_0.cubicTo(
        size.width * 0.7963000,
        size.height * 0.9473000,
        size.width * 0.8877000,
        size.height * 0.8665000,
        size.width * 0.8385500,
        size.height * 0.7352500);
    path_0.cubicTo(
        size.width * 0.8145500,
        size.height * 0.6709500,
        size.width * 0.7085500,
        size.height * 0.6105500,
        size.width * 0.6466500,
        size.height * 0.5387500);
    path_0.close();
    path_0.moveTo(size.width * 0.6329500, size.height * 0.3422500);
    path_0.cubicTo(
        size.width * 0.6896500,
        size.height * 0.3439000,
        size.width * 0.7480500,
        size.height * 0.2790500,
        size.width * 0.7517500,
        size.height * 0.2189000);
    path_0.cubicTo(
        size.width * 0.7566500,
        size.height * 0.1404000,
        size.width * 0.7052500,
        size.height * 0.06175000,
        size.width * 0.6284000,
        size.height * 0.08185000);
    path_0.cubicTo(
        size.width * 0.5827000,
        size.height * 0.09380000,
        size.width * 0.5452000,
        size.height * 0.1523500,
        size.width * 0.5416000,
        size.height * 0.2098500);
    path_0.cubicTo(
        size.width * 0.5374500,
        size.height * 0.2764000,
        size.width * 0.5724500,
        size.height * 0.3406000,
        size.width * 0.6329500,
        size.height * 0.3423000);
    path_0.close();
    path_0.moveTo(size.width * 0.4136500, size.height * 0.3240000);
    path_0.cubicTo(
        size.width * 0.4725000,
        size.height * 0.3160500,
        size.width * 0.4970000,
        size.height * 0.2454000,
        size.width * 0.4868000,
        size.height * 0.1641000);
    path_0.cubicTo(
        size.width * 0.4783000,
        size.height * 0.09715000,
        size.width * 0.4420000,
        size.height * 0.03225000,
        size.width * 0.3634000,
        size.height * 0.05445000);
    path_0.cubicTo(
        size.width * 0.2551500,
        size.height * 0.08500000,
        size.width * 0.2724000,
        size.height * 0.3431000,
        size.width * 0.4136500,
        size.height * 0.3240000);
    path_0.close();
    path_0.moveTo(size.width * 0.2080000, size.height * 0.5296000);
    path_0.cubicTo(
        size.width * 0.3371500,
        size.height * 0.5103500,
        size.width * 0.3070000,
        size.height * 0.2327000,
        size.width * 0.1669000,
        size.height * 0.2646000);
    path_0.cubicTo(
        size.width * 0.04640000,
        size.height * 0.2921000,
        size.width * 0.06255000,
        size.height * 0.5513500,
        size.width * 0.2080000,
        size.height * 0.5296000);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  void paint2(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4834643, size.height * 0.5806408);
    path_0.lineTo(size.width * 0.4834643, size.height * 0.09294338);
    path_0.cubicTo(size.width * 0.4834643, size.height * 0.04167692,
        size.width * 0.4417874, 0, size.width * 0.3905209, 0);
    path_0.cubicTo(
        size.width * 0.3392730,
        0,
        size.width * 0.2975822,
        size.height * 0.04167692,
        size.width * 0.2975822,
        size.height * 0.09294338);
    path_0.lineTo(size.width * 0.2975822, size.height * 0.5806269);
    path_0.cubicTo(
        size.width * 0.2201742,
        size.height * 0.6167246,
        size.width * 0.1705556,
        size.height * 0.6942161,
        size.width * 0.1705556,
        size.height * 0.7800486);
    path_0.cubicTo(
        size.width * 0.1705556,
        size.height * 0.9013289,
        size.width * 0.2692452,
        size.height * 1.000005,
        size.width * 0.3905441,
        size.height * 1.000005);
    path_0.cubicTo(
        size.width * 0.5118570,
        size.height * 1.000005,
        size.width * 0.6105141,
        size.height * 0.9013335,
        size.width * 0.6105141,
        size.height * 0.7800486);
    path_0.cubicTo(
        size.width * 0.6104909,
        size.height * 0.6942161,
        size.width * 0.5608722,
        size.height * 0.6167200,
        size.width * 0.4834643,
        size.height * 0.5806408);
    path_0.close();
    path_0.moveTo(size.width * 0.5888657, size.height * 0.7800486);
    path_0.cubicTo(
        size.width * 0.5888657,
        size.height * 0.8894185,
        size.width * 0.4999095,
        size.height * 0.9783562,
        size.width * 0.3905395,
        size.height * 0.9783562);
    path_0.cubicTo(
        size.width * 0.2811834,
        size.height * 0.9783562,
        size.width * 0.1922133,
        size.height * 0.8894185,
        size.width * 0.1922133,
        size.height * 0.7800486);
    path_0.cubicTo(
        size.width * 0.1922133,
        size.height * 0.7005287,
        size.width * 0.2395251,
        size.height * 0.6288995,
        size.width * 0.3126952,
        size.height * 0.5976198);
    path_0.lineTo(size.width * 0.3192585, size.height * 0.5947977);
    path_0.lineTo(size.width * 0.3192585, size.height * 0.09294338);
    path_0.cubicTo(
        size.width * 0.3192585,
        size.height * 0.05362439,
        size.width * 0.3512344,
        size.height * 0.02164842,
        size.width * 0.3905534,
        size.height * 0.02164842);
    path_0.cubicTo(
        size.width * 0.4298724,
        size.height * 0.02164842,
        size.width * 0.4618484,
        size.height * 0.05362439,
        size.width * 0.4618484,
        size.height * 0.09294338);
    path_0.lineTo(size.width * 0.4618484, size.height * 0.1836077);
    path_0.lineTo(size.width * 0.3905209, size.height * 0.1836077);
    path_0.lineTo(size.width * 0.3905209, size.height * 0.2052515);
    path_0.lineTo(size.width * 0.4618159, size.height * 0.2052515);
    path_0.lineTo(size.width * 0.4618159, size.height * 0.3021310);
    path_0.lineTo(size.width * 0.3905209, size.height * 0.3021310);
    path_0.lineTo(size.width * 0.3905209, size.height * 0.3237747);
    path_0.lineTo(size.width * 0.4618159, size.height * 0.3237747);
    path_0.lineTo(size.width * 0.4618159, size.height * 0.4258713);
    path_0.lineTo(size.width * 0.3905209, size.height * 0.4258713);
    path_0.lineTo(size.width * 0.3905209, size.height * 0.4475151);
    path_0.lineTo(size.width * 0.4618159, size.height * 0.4475151);
    path_0.lineTo(size.width * 0.4618159, size.height * 0.5947931);
    path_0.lineTo(size.width * 0.4683930, size.height * 0.5976151);
    path_0.cubicTo(
        size.width * 0.5415864,
        size.height * 0.6289134,
        size.width * 0.5888657,
        size.height * 0.7005287,
        size.width * 0.5888657,
        size.height * 0.7800486);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff010002).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8294491, size.height * 0.3021170);
    path_1.lineTo(size.width * 0.7353778, size.height * 0.3021170);
    path_1.lineTo(size.width * 0.7353778, size.height * 0.2127106);
    path_1.lineTo(size.width * 0.7137340, size.height * 0.2127106);
    path_1.lineTo(size.width * 0.7137340, size.height * 0.3021170);
    path_1.lineTo(size.width * 0.6289831, size.height * 0.3021170);
    path_1.lineTo(size.width * 0.6289831, size.height * 0.3237747);
    path_1.lineTo(size.width * 0.7137340, size.height * 0.3237747);
    path_1.lineTo(size.width * 0.7137340, size.height * 0.4131626);
    path_1.lineTo(size.width * 0.7353778, size.height * 0.4131626);
    path_1.lineTo(size.width * 0.7353778, size.height * 0.3237747);
    path_1.lineTo(size.width * 0.8294491, size.height * 0.3237747);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff010002).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }
}
