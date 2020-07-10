import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        body: Center(
          child: CustomPaint(
            painter: MyPainter(),
            size: Size(200,100),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final center = Offset(size.width / 2,size.height / 2);
    final paint = Paint()..color = Colors.yellow;
    canvas.drawCircle(center, 200, paint);
    final smile = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
    canvas.drawArc(Rect.fromCircle(center: center,radius: 150), 0.32, 2.5, false, smile);
    canvas.drawCircle(Offset(center.dx - 150/2, center.dy - 150/2), 20, Paint());
    canvas.drawCircle(Offset(center.dx + 150/2, center.dy - 150/2), 20, Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;

}

