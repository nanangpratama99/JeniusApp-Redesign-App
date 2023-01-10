// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10,
        left: 10,
        right: 10,
      ),

      // const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),

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
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.health_and_safety,
                  text: 'Wealth',
                ),
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
                                        Image.asset(
                                          "assets/images/pindahsaldo.png",
                                          width: 50,
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
                                        Image.asset(
                                          "assets/images/send2.png",
                                          width: 37,
                                        ),
                                        Text(
                                          "Send it",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/scan2.png",
                                          width: 50,
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
                                        Image.asset(
                                          "assets/images/wallet.png",
                                          width: 40,
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
                                        Image.asset(
                                          "assets/images/bill.png",
                                          width: 50,
                                        ),
                                        Text(
                                          "Bayar Tagihan",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/add.png",
                                          width: 40,
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
                  text: '',
                ),
                GButton(
                  icon: Icons.card_giftcard,
                  text: 'Cards',
                ),
                GButton(
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
                                  padding:
                                      EdgeInsets.only(bottom: 150, right: 150),
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
                                                color: TextColor, fontSize: 25),
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
                                      SizedBox(
                                        height: 15,
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
                                                    fontWeight: FontWeight.bold,
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
                                                padding:
                                                    EdgeInsets.only(left: 44),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    Icons.arrow_forward_ios),
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
                                                padding:
                                                    EdgeInsets.only(left: 50),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    Icons.arrow_forward_ios),
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
                  icon: Icons.person,
                  text: 'Profil',
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
