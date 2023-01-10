import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';
import 'package:jenius_app_cloning/screens/home/widget/card.dart';
import 'package:line_icons/line_icons.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
        child: GNav(
          // backgroundColor: Colors.grey.shade300,
          haptic: true,
          tabBorderRadius: 12,
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
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.health_and_safety,
              text: 'Wealth',
            ),
            GButton(
              onPressed: () {
                return showBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: PrimColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(50),
                      height: 300,
                      child: Column(
                        children: [
                          // BARIS MENU ATAS
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/pindahsaldo.png",
                                      width: 55,
                                    ),
                                    Text("data")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/send.png",
                                      width: 55,
                                    ),
                                    Text("data")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/scan2.png",
                                      width: 55,
                                    ),
                                    Text("data")
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 40,
                          ),
                          // BARIS MENU BAWAH
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/wallet.png",
                                      width: 55,
                                    ),
                                    Text("data")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/bill.png",
                                      width: 55,
                                    ),
                                    Text("data")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/notif.png",
                                      width: 55,
                                    ),
                                    Text("data")
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
              text: '',
            ),
            GButton(
              icon: Icons.card_giftcard,
              text: 'Cards',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}


// SHOW MODAL BUTTOM SEET
