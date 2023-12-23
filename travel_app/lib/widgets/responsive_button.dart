import 'package:flutter/material.dart';

class Responsivebutton extends StatelessWidget {
  bool? isresponsive;
  double? width;
  Responsivebutton({super.key, this.width, this.isresponsive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("img/button_two.png")],
      ),
    );
  }
}
