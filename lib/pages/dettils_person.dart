
import 'package:flutter/material.dart';

import 'package:demo_app/Static/TextBox.dart';
class person_Info extends StatefulWidget {
  final String pesonImage;
  final String personName;
  const person_Info(
      {super.key, required this.pesonImage, required this.personName});

  @override
  State<person_Info> createState() => _person_InfoState();
}

class _person_InfoState extends State<person_Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
              child: Text(
            "غير مكتمل",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
        ),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Hero(
                        tag: "photo",
                        child: Container(
                            margin: const EdgeInsets.only(right: 10, top: 30),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(widget.pesonImage),
                            ))),
                      ),
                      Hero(
                          tag: "name",
                          child: Text(
                            widget.personName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff294C33),
                    ),
                    child: const Center(
                        child: Text(
                      "المعلومات الشخصية",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            DataBox(boxDtata: "ادخل الاسم هنا",boxName: "الاسم الرباعي",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),
            DataBox(boxDtata: "ادخل الاسم هنا",boxName: "اسم الام الثلاثي",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),
            DataBox(boxDtata: "ادخل المواليد هنا",boxName: "المواليد",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),
            DataBox(boxDtata: "ادخل الرقم هنا",boxName: "رقم هوية الاحوال المدنية ",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),
            DataBox(boxDtata: "ادخل الاسم هنا",boxName: "القسم الحالي ",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),
            DataBox(boxDtata: "ادخل الاسم هنا",boxName: "الاسم الرباعي",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),
            DataBox(boxDtata: "ادخل الاسم هنا",boxName: "الاسم الرباعي",mycolor: Color(0xff6F0100),lengthD: 100,lengthN: 100,),


            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff294C33),
              ),
              child: const Center(
                  child: Text(
                "معلومات السكن",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
              )),
            ),

            SizedBox(height: 20,),
            Container(
              width: 100,
              height: 50,
              padding: EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff294C33),
                ),
                onPressed: () {},
                child: const Text(
                  "انشاء",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),


          ],
        ));
  }
}
