import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  Box({
    required this.colour,
  });
  Color colour;

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 327,
          height: 328,
          color: widget.colour,
        ),
        Positioned(
          top: 55,
          left: 63,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(20)),
          ),
        ),
        Positioned(
          top: 70,
          left: 78,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: widget.colour),
          ),
        ),
        Positioned(
          top: 70,
          left: 190,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: widget.colour),
          ),
        ),
        Positioned(
          top: 180,
          left: 190,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: widget.colour),
          ),
        ),
        Positioned(
          top: 180,
          left: 78,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: widget.colour),
          ),
        ),
      ],
    );
  }
}

class SmallBox extends StatefulWidget {
  SmallBox({
    required this.c,
  });
  Color c;

  @override
  State<SmallBox> createState() => _SmallBoxState();
}

class _SmallBoxState extends State<SmallBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      color: widget.c,
    );
  }
}

class BigBox1 extends StatefulWidget {
  BigBox1({
    required this.colour,
  });
  Color colour;

  @override
  State<BigBox1> createState() => _BigBox1State();
}

class _BigBox1State extends State<BigBox1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Box(colour: Colors.red),
        Row(
          children: [
            SizedBox(
              width: 38,
            ),
            SmallBox(c: Colors.red),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 38,
            ),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
            SmallBox(c: Colors.red),
          ],
        )
      ],
    );
  }
}

class BigBox2 extends StatefulWidget {
  const BigBox2({super.key});

  @override
  State<BigBox2> createState() => _BigBox2State();
}

class _BigBox2State extends State<BigBox2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Box(colour: Colors.yellow),
        Column(
          children: [
            SizedBox(
              height: 260,
            ),
            SmallBox(c: Colors.yellow),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
            SmallBox(c: Colors.yellow),
          ],
        ),
      ],
    );
  }
}

class BigBox3 extends StatefulWidget {
  const BigBox3({super.key});

  @override
  State<BigBox3> createState() => _BigBox3State();
}

class _BigBox3State extends State<BigBox3> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(
              height: 37,
            ),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
            SmallBox(c: Colors.green),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 37,
            ),
            SmallBox(c: Colors.green),
          ],
        ),
        Box(colour: Colors.green),
      ],
    );
  }
}

class BigBox4 extends StatefulWidget {
  @override
  State<BigBox4> createState() => _BigBox4State();
}

class _BigBox4State extends State<BigBox4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
            SmallBox(c: Colors.blue),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 259,
            ),
            SmallBox(c: Colors.blue),
          ],
        ),
        Box(colour: Colors.blue),
      ],
    );
  }
}

class MiddleBox extends StatefulWidget {
  const MiddleBox({super.key});

  @override
  State<MiddleBox> createState() => _MiddleBoxState();
}

class _MiddleBoxState extends State<MiddleBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 115,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 146, 144, 144)),
        color: Color.fromARGB(255, 235, 234, 234),
      ),
      child: Stack(
        children: [
          Positioned(
              left: -40,
              top: 17,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: Colors.red),
              )),
          Positioned(
              left: 20,
              bottom: -40,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.yellow),
              )),
          Positioned(
              top: 20,
              right: -40,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue),
              )),
          Positioned(
              top: -40,
              left: 20,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green),
              )),
        ],
      ),
    );
  }
}
