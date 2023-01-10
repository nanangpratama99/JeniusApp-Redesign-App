import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(22),
      child: SizedBox(
        width: 448,
        height: 220,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: TextColor.withOpacity(0.3), width: 2)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Saldo Aktif",
                      style: TextStyle(
                          fontSize: 20, color: TextColor.withOpacity(0.9)),
                    ),
                    Row(
                      children: [
                        Text(
                          "Lihat in & Out ",
                          style: TextStyle(fontSize: 20, color: PrimColor),
                        ),
                        Image.asset(
                          'assets/images/more.png',
                          width: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      'Rp',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          // color: TextColor.withOpacity(0.7),
                          decoration: BoxDecoration(
                            color: PrimColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // color: TextColor.withOpacity(0.7),
                          decoration: BoxDecoration(
                            color: PrimColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // color: TextColor.withOpacity(0.7),
                          decoration: BoxDecoration(
                            color: PrimColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          // color: TextColor.withOpacity(0.7),
                          decoration: BoxDecoration(
                            color: PrimColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Container(
                      // color: TextColor.withOpacity(0.7),
                      decoration: BoxDecoration(
                        color: PrimColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/m-card.png',
                              width: 60,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "belum terhubung\nke m-card",
                              style: TextStyle(fontSize: 16, color: TextColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/monas.png',
                    width: 70,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
