import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor:Colors.blueAccent.shade200,
        appBar: AppBar(
          title: Text('Ask me anything!'),
          backgroundColor: Colors.indigo.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int imgnum=1;
  void randomnum()
  {
    setState(() {
      imgnum=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: (){
                 setState(() {
                   randomnum();
                   print('image no $imgnum');
                 });
                },
              child: Image(
                image:AssetImage('images/ball$imgnum.png')
              ),
              ),
            ),
          )
        ],
      )
    );
  }
}
