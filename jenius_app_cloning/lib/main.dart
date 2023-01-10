import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home/home.dart';

void main() {
  runApp(JaniusApp());
}

class JaniusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
