import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'infoPage.dart';

class MyApp extends StatefulWidget {



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffBBE1E9),
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/mainLogo.png"),
                  ),
                  
                ),
                
              ),
              const Icon(Icons.key_outlined,
              color: Color(0xff010067),),

              const Text('         الصفحة الرئيسية ',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff010067)),),

              Icon(Icons.expand_more),
             
             
              
            ],

            
          ),
       actions: [

         Icon(Icons.notifications,color: Color(0xff010067),)],
        ),





        body: Container(
          color: Color(0xff76d8dc),
          child: ListView(


            padding: const EdgeInsets.all(20),
            children: const [

              infoCard(debt: '', name: '', work: '',),




               ],

          ),
        ),


        bottomNavigationBar: Container(
          color:  Color(0xffAADAC9),
          child: SalomonBottomBar(

            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("الرئيسة "),
                selectedColor: Color(0xff113c48),

              ),




              /// Search
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("بحث "),
                selectedColor: Color(0xff113c48),
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text("الملف الشخصي ",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:16)),
                selectedColor: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}