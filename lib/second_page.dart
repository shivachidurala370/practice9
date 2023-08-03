import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

List<String> images = [
  "assets/cupcake.jpg",
  "assets/cone.jpg",
  "assets/chocobar.jpg",
  "assets/pancake.jpg"
];

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF6c60e0),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xFF6c60e0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 24,
                        color: Color(0xFFe7e7f6),
                      ),
                      Text(
                        "Cupcake",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFe7e7f6)),
                      ),
                      Icon(
                        Icons.share,
                        size: 24,
                        color: Color(0xFFe7e7f6),
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    height: 740,
                    decoration: BoxDecoration(
                      color: Color(0xFFf8f9fe),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "H",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF7b7b88)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Title",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF555564)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 40,
                            width: 400,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xFFffffff),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFfefeff), blurRadius: 5),
                                ]),
                            child: Text(
                              "Cupcake",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9d9d9d)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.link,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Url",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF555564)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 40,
                            width: 400,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xFFffffff),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFfefeff), blurRadius: 5),
                                ]),
                            child: Text(
                              "https://www.google.com/",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9d9d9d)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.event_note_sharp,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF555564)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 250,
                            width: 400,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xFFffffff),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFfefeff), blurRadius: 5),
                                ]),
                            child: Text(
                              "A cupcake (also British English: fairy cake; Hiberno-English: bun) is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations such as fruit and candy may be applied.",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9d9d9d)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.photo,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Photos",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF555564)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFe7e4ff),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  // padding: EdgeInsets.all(8),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFf7f8fe),
                                    border:
                                        Border.all(color: Color(0xFFa9a2e7)),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF9279f4),
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                    height: 80,
                                    width: 250,
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            height: 80,
                                            width: 80,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFc1bcf2),
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        images[index]),
                                                    fit: BoxFit.cover)),
                                          );
                                        },
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            width: 7,
                                          );
                                        },
                                        itemCount: images.length)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                        color: Color(0xFFa998f8), width: 3),
                                  ),
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF6e50e5)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6c60e0),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFe6e4fc)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 30,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFfefefd),
                          boxShadow: [
                            BoxShadow(color: Color(0xFFeeeafd), blurRadius: 5)
                          ]),
                      child: Icon(
                        Icons.star,
                        size: 24,
                        color: Color(0xFFfe8a06),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 80,
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFfefefd),
                          boxShadow: [
                            BoxShadow(color: Color(0xFFeeeafd), blurRadius: 5)
                          ]),
                      child: Icon(
                        Icons.notifications,
                        size: 24,
                        color: Color(0xFFc0bbf3),
                      ),
                    ),
                  ),
                ],
              )

              // Container(
              //   height: 100,
              //   decoration: BoxDecoration(
              //     color: Color(0xFF6c60e0),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 16),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Icon(
              //           Icons.arrow_back_ios_new,
              //           size: 24,
              //           color: Color(0xFFe7e7f6),
              //         ),
              //         Text(
              //           "Cupcake",
              //           style: TextStyle(
              //               fontSize: 24,
              //               fontWeight: FontWeight.w700,
              //               color: Color(0xFFe7e7f6)),
              //         ),
              //         Icon(
              //           Icons.share,
              //           size: 24,
              //           color: Color(0xFFe7e7f6),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Container(
              //   height: 720,
              //   decoration: BoxDecoration(
              //     color: Color(0xFFf8f9fe),
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(20),
              //         topRight: Radius.circular(20)),
              //   ),
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             Text(
              //               "H",
              //               style: TextStyle(
              //                   fontSize: 20,
              //                   fontWeight: FontWeight.w300,
              //                   color: Color(0xFF7b7b88)),
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "Title",
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color(0xFF555564)),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Container(
              //           height: 40,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(14),
              //               color: Color(0xFFffffff),
              //               boxShadow: [
              //                 BoxShadow(
              //                     color: Color(0xFFfefeff), blurRadius: 5),
              //               ]),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.link,
              //               size: 20,
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "Url",
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color(0xFF555564)),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Container(
              //           height: 40,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(14),
              //               color: Color(0xFFffffff),
              //               boxShadow: [
              //                 BoxShadow(
              //                     color: Color(0xFFfefeff), blurRadius: 5),
              //               ]),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.event_note_sharp,
              //               size: 20,
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "Description",
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color(0xFF555564)),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Container(
              //           height: 250,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(14),
              //               color: Color(0xFFffffff),
              //               boxShadow: [
              //                 BoxShadow(
              //                     color: Color(0xFFfefeff), blurRadius: 5),
              //               ]),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.photo,
              //               size: 20,
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "Photos",
              //               style: TextStyle(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color(0xFF555564)),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Container(
              //           padding: EdgeInsets.all(8),
              //           height: 120,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: Color(0xFFe7e4ff),
              //           ),
              //           child: Row(
              //             children: [
              //               Container(
              //                 height: 80,
              //                 width: 80,
              //                 // padding: EdgeInsets.all(8),
              //                 alignment: Alignment.center,
              //                 decoration: BoxDecoration(
              //                   color: Color(0xFFf7f8fe),
              //                   border: Border.all(color: Color(0xFFa9a2e7)),
              //                   borderRadius: BorderRadius.circular(14),
              //                 ),
              //                 child: Icon(
              //                   Icons.add,
              //                   color: Color(0xFF9279f4),
              //                   size: 20,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 7,
              //               ),
              //               Container(
              //                   height: 80,
              //                   width: 250,
              //                   child: ListView.separated(
              //                       scrollDirection: Axis.horizontal,
              //                       itemBuilder:
              //                           (BuildContext context, int index) {
              //                         return Container(
              //                           height: 80,
              //                           width: 80,
              //                           alignment: Alignment.center,
              //                           decoration: BoxDecoration(
              //                               color: Color(0xFFc1bcf2),
              //                               borderRadius:
              //                                   BorderRadius.circular(14),
              //                               image: DecorationImage(
              //                                   image:
              //                                       AssetImage(images[index]),
              //                                   fit: BoxFit.cover)),
              //                         );
              //                       },
              //                       separatorBuilder:
              //                           (BuildContext context, int index) {
              //                         return Container(
              //                           width: 7,
              //                         );
              //                       },
              //                       itemCount: images.length)),
              //             ],
              //           ),
              //         ),
              //         SizedBox(
              //           height: 20,
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             InkWell(
              //               onTap: () {
              //                 Navigator.pop(context);
              //               },
              //               child: Container(
              //                 alignment: Alignment.center,
              //                 height: 50,
              //                 width: 160,
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(14),
              //                   border: Border.all(
              //                       color: Color(0xFFa998f8), width: 3),
              //                 ),
              //                 child: Text(
              //                   "Cancel",
              //                   style: TextStyle(
              //                       fontSize: 20,
              //                       fontWeight: FontWeight.w700,
              //                       color: Color(0xFF6e50e5)),
              //                 ),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 6,
              //             ),
              //             Container(
              //               alignment: Alignment.center,
              //               height: 50,
              //               width: 160,
              //               decoration: BoxDecoration(
              //                 color: Color(0xFF6c60e0),
              //                 borderRadius: BorderRadius.circular(14),
              //               ),
              //               child: Text(
              //                 "Save",
              //                 style: TextStyle(
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.w700,
              //                     color: Color(0xFFe6e4fc)),
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          )),
    );
  }
}
