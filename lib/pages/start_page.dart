import 'package:demo_app/pages/LogIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dettils_person.dart';
import '../BottomNavBar/home.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(top: 200),
      color: Colors.black,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[

            Container(

              height: 200,
              width: 300,

              child: Container(
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage( image: AssetImage("asset/logo.jpg"),)
                ),

              ),

            ),
           const SizedBox(
             height: 50,
           ),
           const Center(
             child: Text("   البرنامج الرسمي لحفط المعلومات    ",textDirection:TextDirection.ltr,style:
             TextStyle(fontWeight: FontWeight.bold,fontSize:25 ,color: Colors.white),),
           ),
           const SizedBox(
             height: 50,
           ),

           GestureDetector(

             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10) ,
                 color: Color(0xff620B00),
               ),
               height: 50,
               width: 200,

               child: const Center(
                 child: Text("التالي ",textDirection:TextDirection.rtl,
                     style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,color: Colors.white)),
               ),


             ),
             onTap: ()
             {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
             },

           ),

         ],
       ),


    );
  }
}
