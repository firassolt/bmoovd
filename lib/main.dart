import 'package:bmoovd_/eat&drink.dart';
import 'package:bmoovd_/headermenu.dart';
import 'package:bmoovd_/sportsbar.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        navigatorKey: Get.key,
        initialRoute: '/Home',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/Home': (context) => const MyHomePage(title: "Home"),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/SportsBar': (context) => const SportsBar(title: "Sports Bar"),
          '/Eat&Drink': (context) => const EatAndDrink(title: "Eat & Drink"),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a purple toolbar. Then, without quitting the app,
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
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 18, 18, 18)),
            useMaterial3: true,
            fontFamily: "SF Pro Display"),
        home: ResponsiveBreakpoints.builder(
          child: const MyHomePage(title: 'Home'),
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CarouselController _controller = CarouselController();
  final _advancedDrawerController = AdvancedDrawerController();
  int _current = 0;
  Color gray = const Color.fromARGB(255, 42, 42, 42);
  Color cream = const Color.fromARGB(255, 224, 206, 178);
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);
  var images = [
    "https://www.bmoovd.de/templates/yootheme/cache/77/2024-05-22-slider-pokal-77e03acd.webp",
    "https://www.bmoovd.de/templates/yootheme/cache/77/2024-05-22-slider-pokal-77e03acd.webp",
    "https://www.bmoovd.de/templates/yootheme/cache/77/2024-05-22-slider-pokal-77e03acd.webp"
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return AdvancedDrawer(
      drawer: SafeArea(
          child: Container(
        child: const Text("Hello"),
      )),
      controller: _advancedDrawerController,
      childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Scaffold(
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
            style: const TextStyle(color: Colors.white, fontFamily: "Pica"),
          ),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              //_advancedDrawerController.showDrawer();
              showModalBottomSheet(
                backgroundColor: gray,
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                menuBtn("Home", "Home"),
                                menuBtn("Sports Bar", "Home"),
                                menuBtn("Eat & Drink", "Home")
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Unsere Sportsbar",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: "Pica"),
                      ),
                    ],
                  ),
                  Container(
                    height: 280,
                    child: Swiper(
                      autoplay: true,
                      itemBuilder: (BuildContext context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(images[index]),
                        );
                      },
                      itemCount: images.length,
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(
                          "IM B'MOOVD FEIERN WIR DEN SPORT",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(170, 50),
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromARGB(255, 137, 199, 255),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: const Text(
                                "TISCH BUCHEN",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(170, 50),
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromARGB(255, 249, 179, 52),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: const Text(
                                "BOWLING BUCHEN",
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
                                "DEIN EVENT",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(170, 50),
                                  elevation: 0,
                                  backgroundColor:
                                      const Color.fromARGB(255, 224, 206, 178),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: const Text(
                                "FÜR MARIO",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Center(
                          child: Column(
                            children: [
                              Text(
                                "Allerpark 7",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "38448 Wolfsburg",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "05361 89276-0",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "info@bmoovd.de",
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Stack(children: [
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          color: gray,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.instagram,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ]),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Stack(children: [
                                    Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          color: gray,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            FontAwesomeIcons.twitter,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
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

class CustomPaginationIndicator extends StatelessWidget {
  final bool isActive;

  const CustomPaginationIndicator({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 5.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      color: isActive ? Colors.white : Colors.grey,
    );
  }
}
