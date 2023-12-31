
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetrain/widgets/CustomEditText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Auth.dart';
import 'Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late bool value = false;
  final _fullNameController=TextEditingController();
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  final _confirmPasswordController=TextEditingController();
  Future Signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
            CustomTextField(text: "Full Name",controller:_fullNameController  ,),
            SizedBox(height: 10,),
            CustomTextField(text: "Email Address",controller: _emailController,),
            SizedBox(height: 10,),
            CustomTextField(text: "Password",controller: _passwordController,),
            SizedBox(height: 10,),
            CustomTextField(text: "Confirm Password",controller: _confirmPasswordController,),
            SizedBox(height: 10,),
            Row(
              children: [
                Checkbox(
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Text("I’ve read and agree to the terms of privacy policy",style: TextStyle(color: Color(0xFF7F8192),fontSize: 12),)
              ],
            ),
            SizedBox(height: 50,),
            MaterialButton(onPressed: (){
              Signup();
            },
    height: 56,splashColor: Colors.white,minWidth: 332,child: Text("Register",style: TextStyle(fontSize: 18,fontFamily: "Poppins",color: Colors.white,fontWeight: FontWeight.w500),),color: Color(0xFF5771F9),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),),
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
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },child: Text('LOGIN',style: TextStyle(letterSpacing: 1.5,color: Color(0xFF5771F9),fontWeight: FontWeight.w600,fontSize: 16),),),
                  SizedBox(width: 5,),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
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
