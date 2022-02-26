import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int solNomer = 1;
  int onNomer = 3;

  void ozgort() {
    Random random = Random();
    int randomNumber = random.nextInt(100);
    setState(() {
      solNomer = random.nextInt(6) + 1;
      onNomer = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
         centerTitle: true,
          title: Text(
          "Dice App".toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              (Expanded(
                child: InkWell(
                  onTap: ozgort,
                  child: Image.asset(
                    "assets/fonts/images/dice_$solNomer.png",
                    color: Colors.white,
                  ),
                ),
              )),
              Expanded(
                child: InkWell(
                  onTap: ozgort,
                  child: Image.asset(
                    "assets/fonts/images/dice_$onNomer.png",
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}