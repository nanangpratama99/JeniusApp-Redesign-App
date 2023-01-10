import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

class InsightCard extends StatelessWidget {
  const InsightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Insight Untuk Kamu",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 30, left: 20, bottom: 30, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(4, 8), // Shadow position
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Monetory",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "assets/images/more.png",
                      width: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  color: PrimColor,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/grafik.png"),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Pengeluaranmu\n01 Jan 2023 - 06 Jan 2023",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Text(
                              "Rp.799.500                 ",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.9),
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 169, 226, 255).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/notif.png",
                              width: 40,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: Text(
                                    "Kamu memiliki 1 transaksi Belum\nTerkategori"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Ubah Kategori                     ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: PrimColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
