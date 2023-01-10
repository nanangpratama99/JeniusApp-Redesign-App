import 'package:flutter/material.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/pindai.png',
                width: 30,
              ),
              SizedBox(
                height: 7,
              ),
              Text("Pindahkan"),
              Text("Saldo"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/transfer.png',
                width: 30,
              ),
              SizedBox(
                height: 7,
              ),
              Text("Transfer"),
              Text("& Bayar"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/tagih.png',
                width: 30,
              ),
              SizedBox(
                height: 7,
              ),
              Text("Tagih"),
              Text("Uang"),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/scan.png',
                width: 30,
              ),
              SizedBox(
                height: 7,
              ),
              Text("Scan"),
              Text("QRIS"),
            ],
          ),
        ],
      ),
    );
  }
}
