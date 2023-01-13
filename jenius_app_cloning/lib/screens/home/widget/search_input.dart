import 'package:flutter/material.dart';
import 'package:jenius_app_cloning/constatns/colors.dart';

class SearchInput extends StatelessWidget {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: TextColor.withOpacity(0.1), width: 2),
            ),
            child: TextField(
              onSubmitted: (value) {
                print(value);
              },
              controller: emailController,
              cursorColor: TextColor,
              decoration: InputDecoration(
                  fillColor: TextColor.withOpacity(0.1),
                  filled: true,
                  contentPadding: EdgeInsets.all(18),
                  border: InputBorder.none,
                  hintText: 'Cari History Transaksi ....',
                  hintStyle: TextStyle(color: TextColor)),
            ),
          ),
          Positioned(
            right: 40,
            top: 31,
            child: Container(
              decoration: BoxDecoration(
                color: PrimColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {
                  emailController;
                },
                icon: Image.asset(
                  'assets/images/search.png',
                  width: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
