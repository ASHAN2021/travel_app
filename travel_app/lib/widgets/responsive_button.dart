import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class Responsivebutton extends StatelessWidget {
  bool? isresponsive;
  double? width;
  Responsivebutton({super.key, this.width = 120, this.isresponsive = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isresponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Row(
          mainAxisAlignment: isresponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isresponsive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Apptext(text: "Book Trip Now"))
                : Container(),
            Image.asset("img/button_two.png"),
          ],
        ),
      ),
    );
  }
}
