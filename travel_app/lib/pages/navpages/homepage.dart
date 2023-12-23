import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(
            top: 60,
            left: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
          ),
          child: Applargetext(text: "Discover"),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          child: TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.grey,
            indicator: CircleTabIndicator(color: Colors.black54, radius: 4),
            tabs: [
              Tab(
                text: "places",
              ),
              Tab(
                text: "inspiration",
              ),
              Tab(
                text: "Emptions",
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              Text("Hi"),
              Text("there"),
              Text("bye"),
            ],
          ),
        )
      ]),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _circlepainter(color: color, radius: radius);
  }
}

class _circlepainter extends BoxPainter {
  final Color color;
  double radius;

  _circlepainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
