import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Home(),));
     });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/images.jpg'),
          // color: Colors.green,
          // child: Center(
            
          // //   child: Text(
          // //     "login",
              
          // //     style: TextStyle(
          // //         fontSize: 34,
          // //         fontWeight: FontWeight.w700,
          // //         color: Colors.white),
                  
          // //   ),
          // )
          ),
          backgroundColor: Colors.black,
    );;
  }
}