import 'package:flutter/material.dart';

class MisalBarak extends StatefulWidget {
  const MisalBarak({ Key key }) : super(key: key);

  @override
  _MisalBarakState createState() => _MisalBarakState();
}

class _MisalBarakState extends State<MisalBarak> {
  @override
  Widget build(BuildContext context) {
    var red = Colors.red;
    return Scaffold(
      backgroundColor: Colors.cyan,
      body:Column(
        children: [
        Expanded(
          flex: 3,
         child:Container(
        color: red)
         ),
        
         Expanded(
         child:
         Container(
        color: Colors.green
        ),
        ),
      
         Expanded(
         child:
         Container(
        color: Colors.black,
        ),
         ),
        ],
       ),
      
    );
  }
}