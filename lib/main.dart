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
        body: CustomPaint(
          painter: MyPainter(),
          size: Size(200,100),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {


    canvas.drawLine(Offset(175,175), Offset(350,350), Paint());
    canvas.drawCircle(Offset(75,75), 20, Paint());
    canvas.drawRect(Rect.fromPoints(Offset(200,200), Offset(150,150)), Paint());

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate)=>false;

}

