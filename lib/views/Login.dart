
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetrain/widgets/CustomEditText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Auth.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool value = false;
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  Future Signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Auth()),
    );
}
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 53,),
              child: Text("Log In",style: TextStyle(fontSize: 44,color: Color(0xFF151940),fontFamily: "Poppins",fontWeight: FontWeight.w500),),
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
            CustomTextField(text: "Enter Email Address",controller: _emailController,),
            SizedBox(height: 10,),
            CustomTextField(text: "Password",controller: _passwordController,),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Forgot Password?",style: TextStyle(color: Color(0xFF5771F9),fontSize: 13,decoration: TextDecoration.underline,),),
                )
              ],
            ),
            SizedBox(height: 50,),
            MaterialButton(onPressed: (){
              Signin();
            },
              height: 56,splashColor: Colors.white,minWidth: 332,child: Text("Login",style: TextStyle(fontSize: 18,fontFamily: "Poppins",color: Colors.white,fontWeight: FontWeight.w500),),color: Color(0xFF5771F9),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Already have an account?"),
                ),
                Spacer(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  InkWell(onTap: (){
                   Navigator.push(
                    context,
                   MaterialPageRoute(builder: (context) => const Register()),
                     );
                  },child: Text('SIGN UP',style: TextStyle(letterSpacing: 1.5,color: Color(0xFF5771F9),fontWeight: FontWeight.w600,fontSize: 16),),),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){

                  }, icon:Icon(Icons.arrow_forward,size: 20,color: Color(0xFF5771F9),) )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
