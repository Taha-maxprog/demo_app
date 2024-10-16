import 'package:demo_app/BottomNavBar/BottomNavegationBar.dart';
import 'package:demo_app/pages/LogIn.dart';
import 'package:demo_app/pages/SignUp.dart';
import 'package:demo_app/BottomNavBar/home.dart';
import 'package:flutter/material.dart';

import 'homeworks/homework.dart';
import 'maps/mainMap.dart';

void main() {
  runApp(preStart());
}

class preStart extends StatelessWidget {
  const preStart({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}
