

import 'package:demo_app/pages/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Db/ApiLinks.dart';
import '../Db/crud.dart';
import '../BottomNavBar/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _valditonKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Crud crud = Crud();
  login()async{
    if(_valditonKey.currentState!.validate()){
      var response = await crud.postRequest(linkLogin, {
        "emsil":email.text,
        "password":password.text
      });
      if(response["status"]=="succes"){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));


      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Center(child: Text("تسجيل الدخول ",style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.black,
              fontSize: 25),)),

          backgroundColor:  Colors.white,

        ),
        body: ListView(

          children: [
            Form(
              key: _valditonKey,
              child: Container(
                color: Colors.white,


                child: Column(
                  children: [
                    Container(

                      margin: EdgeInsets.all(10),
                      height: 300,
                      //width: 300,
                      decoration:   BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        image:const DecorationImage(

                          image: AssetImage("asset/face.png") ,
                        ),

                      ),
                    ),
                    SizedBox(height: 10,),

                    Container(
                      margin: EdgeInsets.only(left: 20,),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20)),

                      child: TextFormField(
                             controller: password,
                        decoration: InputDecoration(

                            border: OutlineInputBorder(),

                            labelText: "   كلمة المرور ",

                            prefixIcon: Icon(Icons.lock),
                            hintText: "   ادخل كلمة المرور هنا ",
                            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear))

                        ),
                        validator: (value){
                          if(value==null|| value.isEmpty){
                            return(" لا يمكن انت يكون هذا الحقل فارغا");
                          }else if (value.length < 8 ){
                            return ( " كلمة المرور اقل من 8 احرف ");
                          }
                        },
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.name,
                        maxLength: 14,

                      ),
                    ), Container(
                      margin: EdgeInsets.only(left: 20, ),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20)),

                      child: TextFormField(
                             controller: email,
                        decoration: InputDecoration(

                            border: OutlineInputBorder(),

                            labelText: "   البريد الالكتروني ",

                            prefixIcon: Icon(Icons.email),
                            hintText: "   ادخل البريد الالكتروني هنا ",
                            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear))

                        ),
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.name,
                        maxLength: 25,
                        validator: (value){
                          if(value== null || value.isEmpty){
                            return(" لا يمكن انت يكون هذا الحقل فارغا");
                          }else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                            return ("    البريد الالكتروني  غير صحيح  ") ;
                          };
                        },
                      ),
                    ),
                    Container(



                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Text("اذا كنت قد نسيت كلمة السر "),
                            TextButton(onPressed: (){},
                                child: Text("نسيت كلمة السر")),
                            Text("اضغط على"),
                          ],
                        )),

                    GestureDetector(
                      child: Container(


                        height: 70,
                        width: 250,

                        decoration: BoxDecoration(
                          color: Color(0xff440B12),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: const Center(
                            child: Text("دخول",style: TextStyle(color: Colors.white,
                                fontSize: 30,fontWeight: FontWeight.bold),
                            )
                        ),

                      ),
                      onTap: () async {
                        await  login();
                      },
                    ),


                    Container(



                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [

                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sign_Up()));


                            },
                                child: Text("انشاء حساب")),
                            Text("ليس لديك حساب  "),
                          ],
                        )),
                  ],
                ),

              ),
            ),
          ],
        )
    );
  }
}
