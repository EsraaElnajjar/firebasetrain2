import 'package:firebasetrain/views/First.dart';
import 'package:firebasetrain/views/HomePage.dart';
import 'package:firebasetrain/views/Login.dart';
import 'package:firebasetrain/views/Register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
