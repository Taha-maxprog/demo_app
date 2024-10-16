import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dettils_person.dart';

class infoCard extends StatefulWidget {
  const infoCard({super.key, required this.name, required this.debt, required this.work});
  final String name ;
  final String debt ;
  final String work ;

  @override
  State<infoCard> createState() => _infoCardState();
}

class _infoCardState extends State<infoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(  20),

      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color:  Color(0xff3A0C0B),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(blurRadius: 20,
          spreadRadius: 4,
          color: Color(0xff3A0C0B),
            offset: Offset(10,10),
          )
        ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                   GestureDetector(
                     child:  Container(
                     height: 200,
                     width: 160,

                     decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       image: const DecorationImage(

                           image:AssetImage("asset/face.png")
                       ),
                     ),

                   ),onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                         builder: (context)=> const person_Info( pesonImage: "asset/face.png",personName:"     الاسم: طه حسين طعمه " ,)
                     )
                     );
                     },
                   ),

            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 20,),
              Text(  widget.name,style: TextStyle(fontSize: 18,color: Colors.white),),
              SizedBox(height: 20,),
              Text(widget.debt,style: TextStyle(fontSize: 13,color: Colors.white),),
              SizedBox(height: 5,),
               Text(widget.work,style: TextStyle(fontSize: 13,color: Colors.white),),

            ],
          ),

          Icon(Icons.more_vert ,color: Colors.white,)
        ],
      ),

        


    );
  }
}
