import 'package:flutter/material.dart';
import 'dart:math';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override

  int leftnum = Random().nextInt(6)+1;
  int rightnum = Random().nextInt(6)+1;


  void randNum(){
    setState(() {
      rightnum = Random().nextInt(6)+1;
      leftnum = Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: Center(child: Text("Dice App")),
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(14),
            child: Row(
              children: [

                Expanded(child: Container(padding: EdgeInsets.all(15),child: Image(image: AssetImage('assets/dice-$leftnum.png')))),
                Expanded(child: Container(padding: EdgeInsets.all(15),child: Image(image: AssetImage('assets/dice-$rightnum.png')))),
              ],
            ),
          ),
          ElevatedButton(onPressed: randNum,child: Text("Roll"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            elevation: MaterialStateProperty.all(10.0)
          ),)
        ],
      ),
    );
  }
}
