import 'package:flutter/material.dart';
import 'dart:math' as math;

class CircularProgressbar extends StatefulWidget {
  const CircularProgressbar({super.key});

  @override
  State<CircularProgressbar> createState() => _CircularProgressbarState();
}

class _CircularProgressbarState extends State<CircularProgressbar> {
  double _to = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: CircularProgressbarWithAnimation(
                duration: const Duration(seconds: 5),
                to: _to,
                colorConditions: [
                  ColorRule(
                    rangeIndex: [0, 20],
                    color: Colors.grey.shade400,
                  ),
                  ColorRule(
                    rangeIndex: [21, 40],
                    color: Colors.redAccent,
                  ),
                  ColorRule(
                    rangeIndex: [41, 97],
                    color: Colors.purpleAccent,
                  ),
                  ColorRule(
                    rangeIndex: [97, 100],
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CircularProgressbarWithAnimation extends StatelessWidget {
  final double from;
  final double to;
  final double strokeWidth;
  final double innerStrokeWidth;
  final Color strokeColor;
  final Color innerStrokeColor;
  final String symbol;
  final Duration? duration;
  final List<ColorRule>? colorConditions;
  final TextStyle? textStyle;

  CircularProgressbarWithAnimation({
    super.key,
    this.from = 0,
    this.to = 100,
    this.strokeWidth = 5,
    this.innerStrokeWidth = 15,
    this.strokeColor = Colors.grey,
    this.innerStrokeColor = Colors.purple,
    this.symbol = '%',
    this.colorConditions,
    this.duration,
    this.textStyle,
  });

  double _from = 0;
  double _to = 0;

  @override
  Widget build(BuildContext context) {
    _from = from / 100;
    _to = to / 100;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                painter: CirclePainter(
                  color: strokeColor,
                  radius: (constraints.maxWidth / 2) - 10,
                  strokeWidth: strokeWidth,
                ),
              ),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: _from, end: _to),
                duration: duration ?? const Duration(seconds: 1),
                curve: Curves.easeInOut,
                builder: (context, double index, widget) {
                  Color color =
                      _getConditionalColor(index * 100) ?? innerStrokeColor;
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomPaint(
                        painter: ArcPainter(
                          color: color,
                          from: _from,
                          to: index,
                          radius: (constraints.maxWidth) - 20,
                          strokeWidth: innerStrokeWidth,
                        ),
                      ),
                      Text('${(index * 100).toInt()}$symbol',
                          style: textStyle == null
                              ? TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: innerStrokeColor)
                              : textStyle!.copyWith(color: color)),
                    ],
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }

  Color? _getConditionalColor(double index) {
    if (colorConditions == null) {
      return null;
    } else {
      final double tempIndex = (index / 100) >= 0.99 ? 100 : index;
      final rules = colorConditions!
          .where((rule) => (tempIndex >= rule.rangeIndex[0] &&
              tempIndex <= rule.rangeIndex[1]))
          .toList();
      if (rules.isEmpty) return null;
      return rules.first.color;
    }
  }
}

class ColorRule {
  final List<double> rangeIndex;
  final Color color;

  ColorRule({required this.rangeIndex, required this.color});
}

class CirclePainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final Color color;

  CirclePainter({
    required this.radius,
    required this.strokeWidth,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(const Offset(0, 0), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class ArcPainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final Color color;
  final double from;
  final double to;

  ArcPainter({
    required this.radius,
    required this.strokeWidth,
    required this.color,
    required this.from,
    required this.to,
  });

  double degToRad(double deg) => deg * (math.pi / 180.0);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
        Rect.fromCenter(
            center: const Offset(0, 0), width: radius, height: radius),
        degToRad(from * 360),
        degToRad((to >= 1 ? 0.99 : to) * 360),
        false,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
