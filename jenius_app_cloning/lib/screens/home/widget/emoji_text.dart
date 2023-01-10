import 'package:flutter/material.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

class EmojiText extends StatelessWidget {
  const EmojiText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 25),
      child: Text(
        'Hai, Apa Kabar\nNanang',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: TextColor),
      ),
    );
  }
}
