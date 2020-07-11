import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/circles.dart';

class Smiley extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _SmileyState createState() => _SmileyState();
}

class _SmileyState extends State<Smiley> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FittedBox(
                child: SizedBox(
                  height: 500,
                  width: 400,
                  child: CustomPaint(
                    painter: MyPainter(),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Circle()));
                },
                child: Text('Next'),
              )
            ],
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

