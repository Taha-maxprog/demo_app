import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String dName ;
  final Color color;
  final double width;
  const Labels({super.key, required this.dName, required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      width:  width,

      decoration: BoxDecoration(
          color: color,
          borderRadius:BorderRadius.circular(20)
      ),
      child: Center(child: Text( dName, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),

    );
  }
}
