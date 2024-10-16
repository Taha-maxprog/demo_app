import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'PersonPage.dart';
import 'Search.dart';
import 'home.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  var _currentIndex = 0;
  static   List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    search(),
    MyProfile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: _widgetOptions.elementAt(_currentIndex),
        bottomNavigationBar: Container(
          color:  Colors.white,
          child: SalomonBottomBar(

            currentIndex: _currentIndex,

            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(

                icon: Icon(Icons.home),
                title: Text("الرئيسة "),
                selectedColor: Color(0xff084011),

              ),




              /// Search
              SalomonBottomBarItem(

                icon: Icon(Icons.search),
                title: Text("بحث "),
                selectedColor: Color(0xff950009),

              ),

              /// Profile
              SalomonBottomBarItem(

                icon: const Icon(Icons.person),
                title: const Text("الملف الشخصي ",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff395542),fontSize:16)),
                selectedColor: Color(0xff395542),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
