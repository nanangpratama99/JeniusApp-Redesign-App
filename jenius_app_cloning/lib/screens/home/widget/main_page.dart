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
      margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 20),
      child: SizedBox(
        width: 448,
        height: 250,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: TextColor.withOpacity(0.3), width: 2)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/more.png',
                            width: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
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
                    Row(
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
                    margin: EdgeInsets.only(left: 10, top: 30),
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
                              "Belum terhubung\nke m-card",
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
