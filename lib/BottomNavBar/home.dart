import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../Db/crud.dart';
import '../Static/labels.dart';
import 'PersonPage.dart';
import '../pages/infoPage.dart';

class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 400,
        leading:   Row(
          //prob
          crossAxisAlignment: CrossAxisAlignment.center,
          // child
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              height: 50,
              width: 50,
              decoration:   BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(

                  image: AssetImage("asset/logo.jpg"),
                ),

              ),

            ),


            const Text('              الصفحة الرئيسية ',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.black),),

            Icon(Icons.expand_more),



          ],


        ),
        actions: [

          Icon(Icons.notifications,color: Colors.black,)],
      ),





      body:ListView(
        children: [

          Container(

            height: 800,

            color: Colors.white,
            child: ListView(



              children:  [
                SizedBox(height: 20,),
                Labels(dName: "الاقسام " , color: Colors.black,width: 400,),

                Container(

                  height: 250,

                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children:const [


                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                      infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),




                    ],

                  ),
                ),
                SizedBox(height: 20,),
                Labels(dName: "الاحدث " , color: Colors.black,width: 400,),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                Labels(dName: "الحسابات " , color: Colors.black,width: 400,),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),
                infoCard(name: "الاسم : طه حسين ",debt: "القسم :اي شي",work: "العمل الحالي :  اي شي ",),




              ],

            ),
          ),
        ],
      )



    );
  }
}