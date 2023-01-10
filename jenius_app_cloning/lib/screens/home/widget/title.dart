import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

class SubTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'IDR',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: TextColor),
          ),
          Icon(
            Icons.add,
            size: 30,
            color: TextColor,
          )
        ],
      ),
    );
  }
}
