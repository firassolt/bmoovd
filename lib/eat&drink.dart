import 'package:bmoovd_/core_elements/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lightbox/flutter_lightbox.dart';
import 'package:flutter_lightbox/image_type.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EatAndDrink extends StatefulWidget {
  const EatAndDrink({super.key, required this.title});
  final String title;
  @override
  State<EatAndDrink> createState() => _SportsBarState();
}

class _SportsBarState extends State<EatAndDrink> {
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);
  Color gray = const Color.fromARGB(255, 42, 42, 42);
  Color cream = const Color.fromARGB(255, 224, 206, 178);

  final List<String> images = [
    'https://www.bmoovd.de/templates/yootheme/cache/20/eat-drink-001-203e3fce.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/88/eat-drink-003-888af3ae.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/b7/eat-drink-005-b791b12b.webp',
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
                      "Delicious burger and beer",
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
                        "https://www.bmoovd.de/component/ajax/?p=image&src=%7B%22file%22%3A%22images%2Fhero%2Fb-moovd-eat-drink.png%22%2C%22type%22%3A%22webp%2C100%22%2C%22thumbnail%22%3A%22%2C%2C%22%7D&hash=f073bddc")),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Text(
                        "B'HAPPY B'MOOVD",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: "Pica"),
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
                      "B'MOOVD Sports Bar offers delicious burgers and over 40 types of beer. Enjoy juicy steaks, pinsas, bowls, salads, finger food, and creative fries amidst sports memorabilia and great events.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 360,
                        height: 83,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Flexible(
                                child: Text(
                                  "You can also enjoy Bad Ass Vodka by Dennis Rodman, wine from Lionel Messi, and wine from Ralf Schumacher.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text("2"),
                              IconButton(
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
                                                "Kitchen hours",
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
                              "Our menu",
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
                              "Book a table",
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

void buildImageList(List<String> images, ImageType imageType, context) {
  showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return LightBox(
          initialIndex: 0,
          images: images,
          imageType: imageType,
        );
      });
}
