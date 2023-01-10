import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// TITLE TEXT
class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Terbaru Untuk Kamu",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Ayo Coba!",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// CASOUSEL

class SliderMenu extends StatelessWidget {
  const SliderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 30),
      child: Stack(
        children: [
          CarouselSlider(
            items: [
              _SliderCard("coin", "Transaksi Lebih Lengkap",
                  "Kini bisa kirim, terima, jual\nbeli mata uang asing."),
              _SliderCard("invest", "Berinvestasi Dengan\Jenius",
                  "Tumbuhkan uang kini lebih\nsimpel. Yuk mulai!"),
              _SliderCard("gift", "X-Card Edisi Spesial",
                  "Life in x-Card khusus\nuntukmu & orang tercinta."),
              _SliderCard("ok", "Aktifkan Akun Bisnis",
                  "Mudah atur keuangan\nbisnis dari satu tempat."),

              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 10),
              //   height: 100,
              //   width: 400,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.purple,
              //   ),
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Image.asset(
              //               "assets/images/invest.png",
              //               width: 70,
              //             ),
              //           ],
              //         ),
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 40),
              //                 child: Text(
              //                   "Berinvestasi Dengan\nJenius",
              //                   style: TextStyle(
              //                       fontSize: 20, color: Colors.white),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Row(
              //             children: [
              //               Text(
              //                 "Tumbuhkan uang kini lebih\nsimpel, Yuk Mulai!",
              //                 style: TextStyle(color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 10),
              //   height: 100,
              //   width: 400,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.purple,
              //   ),
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Image.asset(
              //               "assets/images/gift.png",
              //               width: 70,
              //             ),
              //           ],
              //         ),
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 40),
              //                 child: Text(
              //                   "x-Card Edisi Spesial",
              //                   style: TextStyle(
              //                       fontSize: 20, color: Colors.white),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Row(
              //             children: [
              //               Text(
              //                 "Life in x-Card khusu\nuntukmu & orang tercinta.",
              //                 style: TextStyle(color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 10),
              //   height: 100,
              //   width: 400,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     color: Colors.purple,
              //   ),
              //   child: Row(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.only(left: 10),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Image.asset(
              //               "assets/images/gift.png",
              //               width: 70,
              //             ),
              //           ],
              //         ),
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Row(
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(left: 40),
              //                 child: Text(
              //                   "x-Card Edisi Spesial",
              //                   style: TextStyle(
              //                       fontSize: 20, color: Colors.white),
              //                 ),
              //               ),
              //             ],
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           Row(
              //             children: [
              //               Text(
              //                 "Life in x-Card khusu\nuntukmu & orang tercinta.",
              //                 style: TextStyle(color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
            options: CarouselOptions(height: 140, autoPlay: true),
          )
        ],
      ),
    );
  }

  Container _SliderCard(
    String icon,
    String text1,
    String text2,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.purple,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/$icon.png",
                  width: 70,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "$text1",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "$text2",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
