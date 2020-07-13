import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Center(
                child: CustomPaint(
                  painter: MyCircle(),
                ),
              ),
              Column(
                children: <Widget>[
                  Form(
                    child: TextFormField(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCircle extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2,size.height / 2);
    final circle0 = Paint()..color = Colors.yellow[100];
    canvas.drawCircle(center,500, circle0);
    final circle1 = Paint()..color = Colors.yellow;
    canvas.drawCircle(center,420, circle1);
    final circle2 = Paint()..color = Colors.amber;
    canvas.drawCircle(center,360, circle2);
    final circle3 = Paint()..color = Colors.amberAccent;
    canvas.drawCircle(center,320, circle3);
    final circle4 = Paint()..color = Colors.yellow[800];
    canvas.drawCircle(center,240, circle4);
    final circle5 = Paint()..color = Colors.yellow[500];
    canvas.drawCircle(center,180, circle5);
    final circle6 = Paint()..color = Colors.yellow[300];
    canvas.drawCircle(center,120, circle6);
    final circle7 = Paint()..color = Colors.yellow[100];
    canvas.drawCircle(center,60, circle7);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}
