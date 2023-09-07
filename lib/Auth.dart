import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetrain/views/First.dart';
import 'package:firebasetrain/views/Login.dart';
import 'package:flutter/material.dart';
class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
        builder: (
            (context,Snapshot){
              if(Snapshot.hasData){
                return First();
              }else{
                 return Login();
              }
            }
        ),
      )
    );
  }
}
