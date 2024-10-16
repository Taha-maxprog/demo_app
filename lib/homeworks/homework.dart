import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/dettils_person.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text("   Al Azzam Restaurant" ),
        actions: [Icon(Icons.search)],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
              TabBar(

                isScrollable: true,
                unselectedLabelColor: Color(0xff038C71) ,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,

               indicator: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                color:  Color(0xff038C71),

               ),
              indicatorColor:Color(0xff038C71),
              tabs: const <Widget>[

                Tab(text: "Trays"),
                Tab(text: "Eastern Platters"),
                Tab(text: "Grills"),
                Tab(text: "Fish Platters"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    children: const [
                      FishPage(),
                    ],
                  ),
                  ListView(
                    children: const [
                      FishPage(),
                    ],
                  ),
                  ListView(
                    children: const [
                      FishPage(),
                    ],
                  ),
                  ListView(
                    children: const [
                      FishPage(),
                      FishPage(),
                      FishPage(),
                       FishPage(),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FishPage extends StatefulWidget {
  const FishPage({super.key});

  @override
  State<FishPage> createState() => _FishPageState();
}

class _FishPageState extends State<FishPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 4,
            color: Color(0xffffffff),
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "   white fish  ",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                "    Fillet of white fish with parsley, \n   garlic, olive oil and lemon sauce. ",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                "   IQD 15,000  ",
                style: TextStyle(fontSize: 13, color: Color(0xff038C71)),
              ),
            ],
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(

                  image: NetworkImage("https://imgs.search.brave.com/sH6ITuWlHo2TQrJAS-QUusr5mG_pL6YbZDQzJjse2D0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU1/MzcyODU5L3Bob3Rv/L2Nsb3NldXAtcGhv/dG9ncmFwaC1vZi13/aGl0ZS1maXNoLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz15/di02cGV3S0ZfWW14/M0QwNFd6cDd1VElL/SG13cnJ3ZXNWMDNu/V1BualhFPQ")
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => person_Info(
                    pesonImage: "asset/face.png",
                    personName: "     name : fresh fish  ",
                  ),
                ),
              );
            },
          ),


        ],
      ),
    );
  }
}


