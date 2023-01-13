// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';
import 'package:jenius_app_cloning/screens/home/home.dart';
import 'package:jenius_app_cloning/screens/home/widget/cards_menu.dart';
import 'package:jenius_app_cloning/screens/home/widget/wealth_page.dart';

class MyButtomNavBar extends StatefulWidget {
  MyButtomNavBar({super.key, required this.pcontroller});
  PageController pcontroller;

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),

      // ======================
      // BOTTOM NAVIGATION BAR
      // =======================
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SafeArea(
            child: GNav(
              // selectedIndex: widget.pcontroller.,
              // backgroundColor: Colors.grey.shade300,
              haptic: true,
              tabBorderRadius: 17,
              tabActiveBorder:
                  Border.all(color: Colors.black.withOpacity(0.1), width: 1),
              tabBorder: Border.all(color: PrimColor, width: 1),
              tabShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 8)
              ],
              curve: Curves.easeOutExpo,
              // duration: Duration(milliseconds: 500),
              gap: 5,
              onTabChange: (index) {
                print(index);
              },
              color: PrimColor,
              activeColor: Colors.white,
              iconSize: 24,
              tabBackgroundColor: PrimColor.withOpacity(0.9),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              tabs: [
                GButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, HomePage.nameRoute);
                    widget.pcontroller.jumpToPage(0);
                  },
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(WealthPage.nameRoute);
                    widget.pcontroller.jumpToPage(1);
                  },
                  icon: Icons.health_and_safety,
                  text: 'Wealth',
                ),

                // <------------ SHOW MODAL BOTTOM MENU --------------->
                GButton(
                  onPressed: () {
                    return showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            color: PrimColor,
                            // ignore: prefer_const_constructors
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                              // ignore: prefer_const_constructors
                              bottom: Radius.circular(30),
                            ),
                          ),
                          margin: EdgeInsets.only(
                              bottom: 10, right: 10, left: 10, top: 10),
                          padding: EdgeInsets.only(
                              left: 50, right: 50, bottom: 0, top: 10),
                          height: 350,
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 5,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                padding:
                                    EdgeInsets.only(bottom: 150, right: 150),
                              ),
                              SizedBox(
                                height: 40,
                              ),

                              // ======================
                              // BARIS MENU ATAS
                              // =======================
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            "assets/images/pindahsaldo.png",
                                            width: 40,
                                          ),
                                        ),
                                        Text(
                                          "Pindahkan",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "Saldo",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/images/send2.png"),
                                        ),
                                        Text(
                                          "Send it",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/images/scan2.png"),
                                        ),
                                        Text(
                                          "Scan Q-RIS",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                height: 40,
                              ),

                              // ======================
                              // BARIS MENU ATAS
                              // =======================
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/images/wallet.png"),
                                        ),
                                        Text(
                                          "e-Wallet",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "Center",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/images/bill.png"),
                                        ),
                                        Text(
                                          "Bayar Tagihan",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                              "assets/images/add.png"),
                                        ),
                                        Text(
                                          "Tagih Uang",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  icon: Icons.dashboard,
                  text: 'Menu',
                ),
                GButton(
                  icon: Icons.card_giftcard,
                  text: 'Cards',
                  onPressed: () {
                    // Navigator.of(context).pushNamed(Cards.nameRoute);
                    widget.pcontroller.jumpToPage(2);
                  },
                ),
                GButton(
                  onPressed: () {
                    // <------- MODAL BOTTOM DIALOG AKUN ------------>
                  },
                  icon: Icons.person,
                  text: 'Akun',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// SHOW MODAL BUTTOM SEET
