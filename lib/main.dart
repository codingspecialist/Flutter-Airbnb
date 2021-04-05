import 'package:flutter/material.dart';
import 'package:flutter_airbnb_sample/pages/main_page.dart';

// https://blog.naver.com/getinthere/222294063976
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
