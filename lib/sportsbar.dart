import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lightbox/flutter_lightbox.dart';
import 'package:flutter_lightbox/image_type.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SportsBar extends StatefulWidget {
  const SportsBar({super.key, required this.title});
  final String title;
  @override
  State<SportsBar> createState() => _SportsBarState();
}

class _SportsBarState extends State<SportsBar> {
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);
  Color gray = const Color.fromARGB(255, 42, 42, 42);
  Color cream = const Color.fromARGB(255, 224, 206, 178);

  final List<String> images = [
    'https://www.bmoovd.de/templates/yootheme/cache/9e/dazn-9e6e00b5.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/88/ard-8850cca2.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/b9/zdf-b9a74343.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/c3/prime-c318027a.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/26/magenta-sport-26b78c36.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/10/dyn-1036b9e3.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/35/eurosport-359c19f1.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/8b/joyn-8b9b0d69.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/69/apple-69a9d221.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/21/ran-21d72585.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/b2/rtl-b2ae222c.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/aa/sport-d-aa9c78e5.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/69/yupp-69b4f05e.webp',
    'https://www.bmoovd.de/templates/yootheme/cache/ef/sky-efedda6f.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: const Color.fromARGB(255, 18, 18, 18),
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
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Navigate",
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              menuBtn("Home", Get.currentRoute),
                              menuBtn("Sports Bar", Get.currentRoute),
                              menuBtn("Eat & Drink", Get.currentRoute)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
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
                      "Welcome to our Sports Bar!",
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
                        "https://www.bmoovd.de/templates/yootheme/cache/b5/b-moovd-sportsbar-b588da19.webp")),
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
                const Center(
                    child: Column(
                  children: [
                    Text(
                      "At B'MOOVD we can show you every sport that is available on TV or as a stream.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Watch every sport live, including Bundesliga, ice hockey, football, and more, with licenses from all TV and streaming providers. Join us for the ultimate sports experience!",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                )),
                const SizedBox(
                  height: 30,
                ),
                Row(children: [
                  Flexible(
                    child: Container(
                      height: 100,
                      child: Swiper(
                        itemCount: images.length ~/ 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  images[index * 3],
                                ),
                                Image.network(
                                  images[index * 3 + 1],
                                ),
                                Image.network(
                                  images[index * 3 + 2],
                                ),
                              ],
                            ),
                          );
                        },
                        autoplay: true,
                        control: SwiperControl(),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(170, 50),
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 145, 48, 106),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text(
                    "RESERVE A TABLE",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
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
  print(currentView);
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);
  Color lightBlue = const Color.fromARGB(25, 13, 108, 242);
  return ElevatedButton(
    onPressed: () {
      Get.offAndToNamed("/" + key.toString().replaceAll(" ", ""));
    },
    style: ElevatedButton.styleFrom(
      shape: LinearBorder(),
      backgroundColor: currentView == "/" + key.toString().replaceAll(" ", "")
          ? lightBlue
          : lightGray,
      minimumSize:
          const Size(double.infinity, 50), // Set minimum width and height
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        key.toString(),
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
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
