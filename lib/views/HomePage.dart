import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Auth.dart';
import 'Register.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5771F9),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(top: 216.81,left: 30),
           child: Image.asset("images/Logo.png",width: 120,height: 130,),
         ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text("Wallet",style: TextStyle(fontSize: 65,color: Colors.white,fontFamily:"Poppins",fontWeight:FontWeight.w600,letterSpacing: 1.2),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Money Transfer, Wallet & Finance",style: TextStyle(fontSize: 18,fontFamily: "Poppins",color: Colors.white),),
          ),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: MaterialButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Auth()),
              );
            },height: 56,splashColor: Color(0xFF5771F9),minWidth: 332,child: Text("Get Started Now",style: TextStyle(fontSize: 18,fontFamily: "Poppins",color: Color(0xFF5771F9),fontWeight:FontWeight.w700),),color: Colors.white,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
          )
        ],
      ),
    );
  }

}