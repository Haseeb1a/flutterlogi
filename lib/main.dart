import 'package:flutter/material.dart';
import 'package:login/list.dart';
import 'package:login/splash.dart';

import 'login.dart';

void main() {
  runApp( Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: 
      home:splash(),
    

    );
  }
}


