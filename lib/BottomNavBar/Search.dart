import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Static/TextBox.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return   Container(
padding:  EdgeInsets.only(top: 50),
      margin: EdgeInsets.all(  10),

      child: DataBox( boxDtata: 'ادخل اسم الشخص', mycolor: Colors.black,boxName: 'بحث',lengthD: 300,lengthN: 80,),
    );
  }
}
