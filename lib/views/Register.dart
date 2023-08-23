
import 'package:firebasetrain/widgets/CustomEditText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body:  Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 93,),
            child: Text("Register",style: TextStyle(fontSize: 44,color: Color(0xFF151940),fontFamily: "Poppins",fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                MaterialButton(onPressed: (){},
                  color: Color(0xFFF5F6FA),
                  height: 53,
                  minWidth: 161,
                  child: Center(child: Text("GOOGLE",style: TextStyle(fontSize: 14,letterSpacing: 2.55),)),
                ),
                SizedBox(width: 20,),
                MaterialButton(onPressed: (){},
                  color: Color(0xFFF5F6FA),
                  height: 53,
                  minWidth: 161,
                  child: Center(child: Text("FACEBOOK",style: TextStyle(fontSize: 14,letterSpacing: 2.55),)),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 77),
                child: Container(color: Colors.black45, height: 2, width: 90,),
              ),
              SizedBox(width: 10,),
              Text("OR",style: TextStyle(fontSize: 14,letterSpacing: 2.55)),
              SizedBox(width: 10,),
              Container(color: Colors.grey, height: 2, width: 90,),
            ],
          ),
          SizedBox(height: 25,),
          CustomTextField(text: "Full Name",),
          SizedBox(height: 10,),
          CustomTextField(text: "Email Address",),
          SizedBox(height: 10,),
          CustomTextField(text: "Password",),
          SizedBox(height: 10,),
          CustomTextField(text: "Confirm Password",),
        ],
      ),
    );
  }
}
