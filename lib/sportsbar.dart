import 'package:bmoovd_/core_elements/menu.dart';
import 'package:bmoovd_/reservartion.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lightbox/flutter_lightbox.dart';
import 'package:flutter_lightbox/image_type.dart';
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
                        "https://www.bmoovd.de/component/ajax/?p=image&src=%7B%22file%22%3A%22images%2Fhero%2Fb-moovd-sportsbar.png%22%2C%22type%22%3A%22webp%2C100%22%2C%22thumbnail%22%3A%22%2C%2C%22%7D&hash=390d4600")),
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
                  onPressed: () {
                    Get.to(Reservation(title: "Reservation"));
                  },
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
