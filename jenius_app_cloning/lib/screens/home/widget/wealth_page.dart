import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appbar/appbar_wealth.dart';

// class WealthPage extends StatelessWidget {
//   // <----------- NAME ROUTE -------------->
//   static const nameRoute = '/wealthpage';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Wealth Page"),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 child: Text("Wealth Page"),
//               )
//               // ButtomNavBar(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyWealthPage extends StatelessWidget {
  static const nameRoute = '/wealthpage';
  const MyWealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppbarWealth();
  }
}
