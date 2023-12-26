import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class Appbutton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool? isicon;
  final Color color;
  final Color backgroundcolor;
  final Color bordercolor;
  double size;
  Appbutton(
      {super.key,
      this.text = "Hi",
      this.icon,
      this.isicon = false,
      required this.size,
      required this.color,
      required this.backgroundcolor,
      required this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundcolor,
      ),
      child: isicon == false
          ? Center(
              child: Apptext(
              text: text!,
              color: color,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
