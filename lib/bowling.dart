import 'package:bmoovd_/core_elements/menu.dart';
import 'package:bmoovd_/eat&drink.dart';
import 'package:bmoovd_/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lightbox/image_type.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Bowling extends StatefulWidget {
  const Bowling({super.key, required this.title});
  final String title;
  @override
  State<Bowling> createState() => _BowlingState();
}

class _BowlingState extends State<Bowling> {
  Color gray = const Color.fromARGB(255, 42, 42, 42);
  Color cream = const Color.fromARGB(255, 224, 206, 178);
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);

  List<String> images = [
    'https://www.bmoovd.de/images/sender/ard.png',
    'https://www.bmoovd.de/images/sender/zdf.png',
    'https://www.bmoovd.de/images/sender/sky.png',
    'https://www.bmoovd.de/images/sender/dazn.png',
    'https://www.bmoovd.de/images/sender/espn.png',
    'https://www.bmoovd.de/images/sender/sport1.png',
    'https://www.bmoovd.de/images/sender/eurosport.png',
    'https://www.bmoovd.de/images/sender/nitro.png',
    'https://www.bmoovd.de/images/sender/prosieben.png',
    'https://www.bmoovd.de/images/sender/rtl.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: gray,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.white, fontFamily: "SF Pro Display"),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            //_advancedDrawerController.showDrawer();
            showModalBottomSheet(
              backgroundColor: lightGray,
              context: context,
              builder: (BuildContext context) {
                return buildMenu(context, gray, widget.title);
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    Text(
                      "Bowl and MOOV",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: "Pica"),
                    ),
                  ],
                ),
                SizedBox(
                    height: 180,
                    width: 380,
                    child: Image.network(
                        "https://www.bmoovd.de/templates/yootheme/cache/af/b-moovd-bowling-af46a8e4.webp")),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: SizedBox(
                        width: 350,
                        child: Text(
                          "The bowling lanes at B'MOOVD are among the most modern.",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: "Pica"),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: Column(
                  children: [
                    const Text(
                      "Our 24 bowling lanes are state-of-the-art and digitally controlled. Use touchscreens to easily set up your games, choose from classic TEN-PIN or innovative bowling games, and view your scores and stats in real-time.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 360,
                        height: 63,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Flexible(
                                flex: 1,
                                child: Text(
                                  "How do you like our bowling alley ? Let us know.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              const Text("2"),
                              IconButton(
                                  isSelected: true,
                                  onPressed: () {},
                                  icon: const Icon(FontAwesomeIcons.heart))
                            ],
                          ),
                        ))
                  ],
                )),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                backgroundColor: gray,
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "Pricing",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          "Monday : 3:00 p.m. - 10:30 p.m.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        const Text(
                                          "Friday : 3:00 p.m. - midnight",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        const Text(
                                          "Saturday : 11:00 a.m. - midnight",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        const Text(
                                          "Sunday : 11:00 a.m. - 9:00 p.m.",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        const Text(
                                          "Other days/ Holidays : 11:00 a.m. - midnight",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        const Divider(
                                          height: 1,
                                          color: Colors.white,
                                        ),
                                        Center(
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                FontAwesomeIcons.close,
                                                color: Colors.white,
                                              )),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 50),
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(255, 137, 199, 255),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Business hours",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TO DO
                              showGeneralDialog(
                                  context: context,
                                  pageBuilder: (_, __, ___) {
                                    return const Center(
                                        child: Padding(
                                      padding: EdgeInsets.all(1),
                                    ));
                                  });
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 50),
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(255, 249, 179, 52),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Bowling League",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 50),
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(255, 145, 48, 106),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Book a session",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              buildImageList(
                                  images, ImageType.network, context);
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 50),
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(255, 224, 206, 178),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Gallery",
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget menuBtn(key, currentView) {
  Color lightGray = const Color.fromARGB(255, 42, 42, 42);
  Color lightBlue = const Color.fromARGB(25, 13, 108, 242);
  return ElevatedButton(
    onPressed: () {
      Get.offAndToNamed("/" + key.toString().replaceAll(" ", ""));
    },
    style: ElevatedButton.styleFrom(
      shape: const LinearBorder(),
      backgroundColor: currentView == key ? lightBlue : lightGray,
      minimumSize:
          const Size(double.infinity, 50), // Set minimum width and height
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        key.toString(),
        textAlign: TextAlign.left,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
