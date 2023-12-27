import 'package:flutter/material.dart';
import 'package:travel_app/pages/navpages/main_page.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  int gottenstar = 4;
  int selectindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/mountain2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mainpage()));
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Applargetext(text: "Yosemite"),
                        Applargetext(
                          text: "\$250",
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Apptext(
                          text: "USA, Califonia",
                          color: Colors.black.withOpacity(0.8),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenstar
                                  ? Colors.yellow
                                  : Colors.black.withOpacity(0.3),
                            );
                          }),
                        ),
                        Apptext(
                          text: "(4.0)",
                          color: Colors.black.withOpacity(0.4),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Applargetext(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Apptext(
                      text: "Number of people in your group",
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectindex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Appbutton(
                              size: 50,
                              color: selectindex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundcolor: selectindex == index
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.3),
                              bordercolor: Colors.black,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Applargetext(
                      text: "Description",
                      size: 20,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    Apptext(
                        text:
                            "You must go for a travel.Travelling helps get rid of pressure. Go to the mountains to see the nature. ")
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Appbutton(
                    size: 60,
                    color: Colors.blue,
                    backgroundcolor: Colors.white,
                    bordercolor: Colors.black,
                    isicon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Responsivebutton(
                    isresponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
