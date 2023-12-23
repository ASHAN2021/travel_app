import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  List image = ["welcome_one.png", "welcome_two.png", "welcome_three.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: image.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + image[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Applargetext(text: "Trips"),
                        Apptext(
                          text: "Mountain",
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: Apptext(
                              text:
                                  "Mountain hikes give you an incredible sense of freedom along with endurance tests.  "),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
