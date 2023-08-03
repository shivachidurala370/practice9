import 'package:flutter/material.dart';
import 'package:practice9/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> title = ["Vanilla Cake", "Cupcake", "Pancake", "Donat"];
  List<String> images = [
    "assets/vanilla.jpg",
    "assets/cupcake.jpg",
    "assets/pancake.jpg",
    "assets/donut.jpg"
  ];
  List<Color> colors = [
    Color(0xFFc1bcf6),
    Color(0xFFc1bcf6),
    Color(0xFFfe8905),
    Color(0xFFc1bcf6)
  ];
  List<Color> colors1 = [
    Color(0xFFc1bcf6),
    Color(0xFFfe8905),
    Color(0xFFfe8905),
    Color(0xFFc1bcf6)
  ];
  List<String> text = [
    "All",
    "cake",
    "Fastfood",
    "kabab",
  ];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF6c60e0),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xFFfdfefe),
                      ),
                      Text(
                        "Cooking",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFfdfefe)),
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
                    height: 60,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                          "What bookmark are you searching for?",
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
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Labels",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF64646f)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstPage()));
                        },
                        child: Container(
                          height: 30,
                          width: 44,
                          // padding: EdgeInsets.all(8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xFFf7f8fe),
                            border: Border.all(color: Color(0xFFa9a2e7)),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Color(0xFF9279f4),
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                          height: 30,
                          width: 300,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 30,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFc1bcf2),
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Text(
                                    text[index],
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFf7f9ff)),
                                  ),
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return Container(
                                  width: 5,
                                );
                              },
                              itemCount: text.length)),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bookmarks",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF3a384c)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bookmark_border_sharp,
                                color: Color(0xFFa7a7a9),
                              ),
                              Text(
                                "154",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFa7a7a9)),
                              )
                            ],
                          ),
                        ],
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
                            Icons.logout,
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
                    height: 400,
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            height: 100,
                            decoration: BoxDecoration(
                                color: Color(0xFFffffff),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFc8c4f5), blurRadius: 2),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          title[index],
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF3d3b51)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.notifications,
                                              size: 20,
                                              color: colors[index],
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 20,
                                              color: colors1[index],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFfb8805),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            color: Color(0xFFf3deb7))
                                      ]),
                                  child: Icon(
                                    Icons.window,
                                    size: 16,
                                    color: Color(0xFFfffaf8),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 10,
                          );
                        },
                        itemCount: title.length),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
