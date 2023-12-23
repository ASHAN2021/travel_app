import 'package:flutter/material.dart';
import 'package:travel_app/pages/navpages/homepage.dart';
import 'package:travel_app/pages/navpages/item_bar_page.dart';
import 'package:travel_app/pages/navpages/mypage.dart';
import 'package:travel_app/pages/navpages/searchpage.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List pages = [
    homepage(),
    baritempage(),
    searchpage(),
    mypage(),
  ];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentindex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.apps),
            ),
            BottomNavigationBarItem(
              label: "Bar",
              icon: Icon(Icons.bar_chart_sharp),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "My",
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
