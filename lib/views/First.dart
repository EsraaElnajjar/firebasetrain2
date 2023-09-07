import 'package:flutter/material.dart';

import 'Login.dart';
class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Column(
              children: [
                Text("Home Page"),
                MaterialButton(child: Text("LogOut",style: TextStyle(color: Colors.white),),onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },color: Color(0xFF5771F9),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
