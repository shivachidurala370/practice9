import 'package:flutter/material.dart';
import 'package:practice9/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

List<String> title = [
  "New ideas",
  "Music",
  "Programing",
  "Cooking",
  "Java",
  "Python"
];
List<Color> colors = [
  Color(0xFFfff2c5),
  Color(0xFFd8efff),
  Color(0xFFdfd7fe),
  Color(0xFFfbe1fc),
  Color(0xFFb9f0dd),
  Color(0xFFffe0ce)
];
List<Color> colors1 = [
  Color(0xFFfffae7),
  Color(0xFFf0f7fd),
  Color(0xFFf2f0fb),
  Color(0xFFfdeffd),
  Color(0xFFe4fff7),
  Color(0xFFfef1eb)
];
List<String> images = [
  "assets/idea.png",
  "assets/music.png",
  "assets/monitor.png",
  "assets/cooking.png",
  "assets/java1.png",
  "assets/python1.png"
];

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF6c60e0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.bubble_chart,
                            color: Color(0xFFfdfefe),
                          ),
                        ),
                        Stack(
                          children: [
                            Icon(
                              Icons.notifications_none,
                              color: Color(0xFFfdfefe),
                            ),
                            Positioned(
                              top: 4,
                              right: 4,
                              child: Container(
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFfd8f02),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hi shiva",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFdddaf5)),
                    ),
                    Text(
                      "Welcome Back..",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFdddaf5)),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFa7a0eb),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xFFe3e3f8),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "What Category are you searching for?",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFe3e3f8)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF3a384c)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.delete_outlined,
                            size: 30,
                            color: Color(0xFF9d94ef),
                          ),
                          Icon(
                            Icons.edit_document,
                            size: 30,
                            color: Color(0xFF9d94ef),
                          ),
                          Icon(
                            Icons.menu,
                            size: 30,
                            color: Color(0xFF9d94ef),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 500,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: title.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: colors1[index],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(images[index], height: 50),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(title[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFf8a745))),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomSheet: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFffffff),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 28,
                  color: Color(0xFF887ce7),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Secondpage()));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFF6c60e0),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFaca0ed),
                            blurRadius: 5,
                          )
                        ]),
                    child: Icon(
                      Icons.add,
                      color: Color(0xFFe1def5),
                    ),
                  ),
                ),
                Icon(
                  Icons.star_border,
                  size: 28,
                  color: Color(0xFF887ce7),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
