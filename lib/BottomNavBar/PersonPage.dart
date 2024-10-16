import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../Static/TextBox.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 80),
            child:   Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("     تعديل الملف الشخصي ",textDirection:TextDirection.ltr,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Container(
                        margin: EdgeInsets.only(left: 100),
                        height: 200,
                        width: 200,

                        decoration:   BoxDecoration(
                          boxShadow:const [BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                             blurRadius: 50,
                            offset: Offset(-10,10)

                          )] ,
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            image: AssetImage("asset/face.png",),
                          ),
                        ),
                      ),
                    ],
                  ),

                SizedBox(height: 50,),
                TextData(dettils:  "فلان ابن فلان"  , info:"الاسم"   ),
                TextData(dettils:"any@thing.com"  , info:   "البريد الالكتروني"  ),
                TextData(dettils: "07700000000"  , info: "رقم الهاتف"   ),
                TextData(dettils: "2070/2/22"  , info: "تاريخ الميلاد "   ),
                TextData(dettils: "عاطل "  , info: "العمل الحالي"   ),


              ],
            ),
          ),
        ]
      ),
      

    );
  }
}
