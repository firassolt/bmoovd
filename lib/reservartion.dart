import 'package:bmoovd_/core_elements/menu.dart';
import 'package:bmoovd_/review.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:time_picker_spinner_pop_up/time_picker_spinner_pop_up.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key, required this.title});
  final String title;
  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);
  Color gray = const Color.fromARGB(255, 42, 42, 42);
  Color cream = const Color.fromARGB(255, 224, 206, 178);
  late Color color1 = Colors.white;
  late Color color2 = Colors.white;
  late Color color3 = Colors.white;
  int nbrPeople = 0;

  DateTime selectTime = DateTime.now();

  var boxColor = Colors.white;

  IconData? boxIcon = FontAwesomeIcons.check;
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
          style: TextStyle(color: Colors.white, fontFamily: "SF Pro Display"),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Desired area ?",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontFamily: "Pica"),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: color1,
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                color1 = Color.fromARGB(255, 145, 48, 106);
                                color2 = Colors.white;
                                color3 = Colors.white;
                              });
                            },
                            icon: Icon(FontAwesomeIcons.bowlingBall))),
                    Text(
                      "Bowling",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                color2 = Color.fromARGB(255, 137, 199, 255);
                                color1 = Colors.white;
                                color3 = Colors.white;
                              });
                            },
                            icon: Icon(FontAwesomeIcons.bowlRice))),
                    Text(
                      "Restaurant",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                color3 = Color.fromARGB(255, 249, 179, 52);
                                color1 = Colors.white;
                                color2 = Colors.white;
                              });
                            },
                            icon: Icon(FontAwesomeIcons.glassWater))),
                    Text(
                      "Bar",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Number of people ?",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontFamily: "Pica"),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
                width: 360,
                height: 63,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          "Maximum 18",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                if (nbrPeople > 0) {
                                  setState(() {
                                    nbrPeople--;
                                  });
                                }
                              },
                              icon: const Icon(FontAwesomeIcons.minus)),
                          Text(nbrPeople.toString()),
                          IconButton(
                              onPressed: () {
                                if (nbrPeople < 18) {
                                  setState(() {
                                    nbrPeople++;
                                  });
                                }
                              },
                              icon: const Icon(FontAwesomeIcons.plus))
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 18,
            ),
            Text(
              "Date and time ?",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 18, color: Colors.white, fontFamily: "Pica"),
            ),
            SafeArea(
                child: SizedBox(
              height: 140,
              child: Calendar(
                startOnMonday: true,
                weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
                eventDoneColor: Colors.green,
                selectedColor: Colors.pink,
                selectedTodayColor: Colors.red,
                todayColor: Colors.blue,
                defaultDayColor: Colors.white,
                displayMonthTextStyle: TextStyle(color: Colors.white),
                eventColor: null,
                locale: 'de_DE',
                isExpanded: false,
                expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                datePickerType: DatePickerType.date,
                dayOfWeekStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 11),
                onDateSelected: (value) {
                  setState(() {
                    selectTime = value;
                  });
                },
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Check availability ?",
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: boxColor, borderRadius: BorderRadius.circular(12)),
                  child: TimePickerSpinnerPopUp(
                    mode: CupertinoDatePickerMode.time,
                    minuteInterval: 30,
                    initTime: DateTime.now().subtract(
                        Duration(minutes: 30 + DateTime.now().minute)),
                    textStyle: TextStyle(color: Colors.black),
                    onChange: (dateTime) {
                      // Implement your logic with select dateTime
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      boxColor = Colors.green;
                    });
                  },
                  icon: Icon(boxIcon),
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: ElevatedButton(
              onPressed: () {
                //TO DO
                Get.to(Review(title: "Review"));
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(170, 50),
                  elevation: 0,
                  backgroundColor: const Color.fromARGB(255, 249, 179, 52),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text(
                "Continue",
                textAlign: TextAlign.center,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
