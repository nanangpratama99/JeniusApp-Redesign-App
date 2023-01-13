import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/home/widget/bottom_nav_bar.dart';
import './screens/home/widget/cards_menu.dart';
import './screens/home/widget/wealth_page.dart';
import './screens/home/home.dart';

void main() {
  runApp(JaniusApp());
}

class JaniusApp extends StatelessWidget {
  const JaniusApp({Key? key}) : super(key: key);
  // ==========================
  //     ROOT PAGE / MAIN PAGE
  // ==========================
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        MyWealthPage.nameRoute: (context) => MyWealthPage(),
        Cards.nameRoute: (context) => Cards()
      },
    );
  }
}
