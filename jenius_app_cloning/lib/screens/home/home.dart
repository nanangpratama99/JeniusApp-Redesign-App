import 'package:flutter/material.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';
import 'package:jenius_app_cloning/screens/home/widget/bottom_nav_bar.dart';
import 'package:jenius_app_cloning/screens/home/widget/cards_menu.dart';
import 'package:jenius_app_cloning/screens/home/widget/emoji_text.dart';
import 'package:jenius_app_cloning/screens/home/widget/insight_card.dart';
import 'package:jenius_app_cloning/screens/home/widget/main_page.dart';
import 'package:jenius_app_cloning/screens/home/widget/search_input.dart';
import 'package:jenius_app_cloning/screens/home/widget/sub_menu.dart';
import 'package:jenius_app_cloning/screens/home/widget/title.dart';
import 'package:jenius_app_cloning/screens/home/widget/slider.dart';
import 'package:jenius_app_cloning/screens/home/widget/card.dart';
import 'package:jenius_app_cloning/screens/home/widget/wealth_page.dart';

class HomePage extends StatelessWidget {
  PageController pc = PageController();

  static const nameRoute = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          MyAppBody(),
          MyWealthPage(),
          MyCards(),
        ],
      ),
      bottomNavigationBar: MyButtomNavBar(pcontroller: pc),
    );
  }
}

class MyAppBody extends StatelessWidget {
  const MyAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            // <----- ITEM CLASS ------>
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Row(
                  children: [
                    EmojiText(),
                  ],
                ),
              ),
              SearchInput(),
              SubTitle(),
              MainMenu(),
              SubMenu(),
              TextTitle(),
              SliderMenu(),
              CardInfo(),
              InsightCard(),
            ],
          ),
        ));
  }
}

// ==========================
//           APP BAR
// ==========================
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      shadowColor: Colors.black,
      backgroundColor: BgColor,
      elevation: 2,
      // centerTitle: false,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // <-------- KOLOM KIRI ------->
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "\$nanangpratama\nAkun Personal",
                      style: TextStyle(
                          fontSize: 14, color: TextColor.withOpacity(0.6)),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                            ),
                          ),
                          builder: (context) {
                            return SizedBox(
                              height: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 50,
                                      height: 4,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      padding: EdgeInsets.only(
                                          bottom: 150, right: 150),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(40),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Beralih Akun",
                                                style: TextStyle(
                                                    color: TextColor,
                                                    fontSize: 25),
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Icon(
                                                Icons
                                                    .swap_horizontal_circle_outlined,
                                                color: Colors.grey,
                                              )
                                            ],
                                          ),

                                          // BUSSINES ACCOUNT
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/account.png",
                                                width: 60,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    "Akun Bussiness",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "\$nanangpr                      ",
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 44),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .arrow_forward_ios),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),

                                          SizedBox(
                                            height: 10,
                                          ),

                                          // PERSONAL ACCOUNT
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/account.png",
                                                width: 60,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    "Akun Personal",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text("\$nanangpratama     "),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 50),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .arrow_forward_ios),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.expand_circle_down,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),

            // <---------- KOLOM KANAN ------->
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 15),
                      child: Image.asset(
                        'assets/images/gold.png',
                        width: 25,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
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
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: TextColor.withOpacity(0.1), width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        'assets/images/message.png',
                        width: 25,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: TextColor.withOpacity(0.1), width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/images/notification.png',
                            width: 25,
                          ),
                        ),
                        Positioned(
                          top: 3,
                          right: 4,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [],
    );
    ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
