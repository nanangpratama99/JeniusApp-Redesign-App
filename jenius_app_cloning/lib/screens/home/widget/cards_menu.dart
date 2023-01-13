import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';
import 'card.dart';

class Cards extends StatelessWidget {
  // <----------- NAME ROUTE -------------->
  static const nameRoute = '/cardspage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  child: Text("Cards Page"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCards extends StatelessWidget {
  // <----------- NAME ROUTE -------------->
  static const nameRoute = '/cardspage';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                child: Text("Cards Page"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
