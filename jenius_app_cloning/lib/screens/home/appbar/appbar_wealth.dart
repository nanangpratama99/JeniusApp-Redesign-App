import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

// <-------- APPBAR WEALTH -------->
class AppbarWealth extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);
  const AppbarWealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // <------ TABBAR -------->
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("Cash"),
                ),
                Tab(
                  child: Text("Investment"),
                ),
                Tab(
                  child: Text("Credit"),
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),

          // <------ BODY -------->
          body: TabBarView(
            children: [
              // <----- Cash ----->
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Total Cash",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp.",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "828",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Saldo Aktif",
                                  style: TextStyle(fontSize: 23),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Lihat In & Out",
                                      style: TextStyle(
                                          fontSize: 17, color: PrimColor),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        color: PrimColor,
                                        size: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 224, 224, 224),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Rp. 828",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Dalam Rupiah"),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: Color.fromARGB(255, 194, 194, 194),
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.flag,
                                          size: 45,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "IDR",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Rp. 828"),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 20,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle_outline_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 188, 188, 188),
                                  ),
                                ),
                                Text(
                                  "Aktifkan Mata Uang Asing",
                                  style:
                                      TextStyle(fontSize: 17, color: PrimColor),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Text(
                            "Save it",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: PrimColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.add_box,
                                      size: 80,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Menabung jadi mudah\ndan menguntungkan",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Mulai menabung dan menikmati\nbunga mulai dari 2,5% / tahun",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: OrangeColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 290,
                                  height: 42.0,
                                  child: Center(
                                    child: Text(
                                      "Mulai Save it",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white30,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 290,
                                  height: 42.0,
                                  child: Center(
                                    child: Text(
                                      "Selengkapnya",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Kartu Debit",
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 224, 224, 224),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Total",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Rp.0",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(
                              color: Color.fromARGB(255, 192, 192, 192),
                              thickness: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/m-card.png",
                                          width: 45,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "e-Card",
                                          style: TextStyle(fontSize: 20),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Rp.0",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline_sharp,
                                      size: 30,
                                      color: PrimColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Tambah x-Card",
                                      style: TextStyle(
                                          fontSize: 20, color: PrimColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // <----- PAGE 2 INVESTMENT ----->
              Container(
                child: Column(
                  children: [Text("page 2")],
                ),
              ),

              // <----- PAGE 3 CREDIT ----->
              Container(
                child: Column(
                  children: [
                    Text("page 3"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// <---------- APPBAR CARDS ------------>
