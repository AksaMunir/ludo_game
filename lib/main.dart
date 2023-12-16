import 'package:flutter/material.dart';
import 'package:ludo_game/common_widget.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 770,
            width: 770,
            color: Color.fromARGB(255, 215, 214, 214),
            child: MyGridView(),
          ),
          BigBox1(colour: Colors.red),
          Positioned(left: 369, child: BigBox3()),
          Positioned(top: 443, child: BigBox2()),
          Positioned(left: 443, top: 369, child: BigBox4()),
          Stack(
            children: [
              Positioned(left: 327, top: 328, child: MiddleBox()),
            ],
          ),
        ],
      ),
    ));
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 21,
        crossAxisSpacing: 0.5,
        mainAxisSpacing: 0.5,
      ),
      itemCount: 441,
      itemBuilder: (context, index) {
        return GridItem();
      },
    );
  }
}

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 226, 226, 226),
    );
  }
}
