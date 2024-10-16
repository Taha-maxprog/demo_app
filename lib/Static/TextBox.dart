import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataBox extends StatelessWidget {
  const DataBox({super.key, required this.boxName , required this.boxDtata, required this.mycolor, required this.lengthN, required this.lengthD, });
  final String boxName;
  final String boxDtata;
  final Color mycolor ;
  final double lengthN;
  final double lengthD;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
          margin: EdgeInsets.only(top: 20),
          height: 50,
          width: lengthD,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:   Center(
              child: Hero(tag: "boxDtata",
                child: TextField(
                  textDirection:TextDirection.rtl,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(

                      hintText:  boxDtata ,

                      border: OutlineInputBorder()),
                ),)

          ),
        ),
        SizedBox(
          width: 10,
        ),

        Container(
          margin: EdgeInsets.only(top: 20),
          height: 50,
          width:   lengthN,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: mycolor,
          ),
          child:   Center(
              child: Hero(tag: "boxName",
                  child: Text(
                    boxName,textDirection:TextDirection.rtl,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white,),
                  ))

          ),
        ),

      ],
    );
  }
}


class TextData extends StatelessWidget {
  const TextData({super.key, required this.dettils, required this.info});

    final String dettils;

    final String info ;

  @override
  Widget build(BuildContext context) {
    return Container(

          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1,color: Colors.grey)
            )
          ),
      height: 75,
     // width: 300,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            width: 150,
            child: Text(dettils,textDirection:TextDirection.ltr,
              style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.bold,),),
          ),



          Container(

            width: 200,
            child: Text(info,textDirection:TextDirection.rtl,
              style: TextStyle(color: Colors.grey  , fontSize: 20,fontWeight: FontWeight.bold), ),
          ) ,
                ],
      ),
    );
  }
}
