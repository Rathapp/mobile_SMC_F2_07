
import 'package:evening_class/profile_page.dart';
import 'package:evening_class/simple_page.dart';
import 'package:flutter/material.dart';


import 'log_in.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn()
      // SimplePage()

      // SimplePage()
    );
  }
}
