import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';
import 'package:jenius_app_cloning/screens/home/widget/bottom_nav_bar.dart';
import 'package:jenius_app_cloning/screens/home/widget/emoji_text.dart';
import 'package:jenius_app_cloning/screens/home/widget/insight_card.dart';
import 'package:jenius_app_cloning/screens/home/widget/main_menu.dart';
import 'package:jenius_app_cloning/screens/home/widget/search_input.dart';
import 'package:jenius_app_cloning/screens/home/widget/sub_menu.dart';
import 'package:jenius_app_cloning/screens/home/widget/title.dart';
import 'package:jenius_app_cloning/screens/home/widget/slider.dart';
import 'package:jenius_app_cloning/screens/home/widget/card.dart';
import 'package:path/path.dart' as Path;

class HomePage extends StatelessWidget {
  // get contex => this.contex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            SubTitle(),
            MainMenu(),
            SubMenu(),
            TextTitle(),
            SliderMenu(),
            CardInfo(),
            InsightCard(),
            // ButtomNavBar(),
          ],
        ),
      ),
      bottomNavigationBar: ButtomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: BgColor,
      elevation: 0,
      centerTitle: false,
      title: Container(
        margin: EdgeInsets.only(top: 15, bottom: 18),
        child: Row(
          children: [
            Text(
              "\$nanangpratama\nAkun Personal",
              style: TextStyle(fontSize: 14, color: TextColor.withOpacity(0.6)),
            ),
            SizedBox(
              width: 3,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.expand_circle_down,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/images/gold.png',
                width: 30,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                "Gold",
                style: TextStyle(
                  color: TextColor,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: TextColor.withOpacity(0.1), width: 2),
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                'assets/images/message.png',
                width: 30,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: TextColor.withOpacity(0.1), width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/images/notification.png',
                    width: 30,
                  ),
                ),
                Positioned(
                  top: 17,
                  right: 5,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ],
    );
  }
}
