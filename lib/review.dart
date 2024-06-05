import 'package:bmoovd_/core_elements/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gsform/gs_form/core/form_style.dart';
import 'package:gsform/gs_form/model/data_model/radio_data_model.dart';
import 'package:gsform/gs_form/model/data_model/spinner_data_model.dart';
import 'package:gsform/gs_form/widget/field.dart';
import 'package:gsform/gs_form/widget/form.dart';

class Review extends StatefulWidget {
  const Review({super.key, required this.title});
  final String title;
  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  Color lightGray = const Color.fromARGB(255, 18, 18, 18);
  Color gray = const Color.fromARGB(255, 42, 42, 42);
  Color cream = const Color.fromARGB(255, 224, 206, 178);
  late Color color1 = Colors.white;
  late Color color2 = Colors.white;
  late Color color3 = Colors.white;
  int nbrPeople = 0;

  DateTime selectTime = DateTime.now();
  late GSForm form;
  int id = 0;
  var boxColor = Colors.white;

  //IconData? boxIcon = FontAwesomeIcons.check;
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
      body: RawScrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Review your reservation",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 30, color: Colors.white, fontFamily: "Pica"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 145, 48, 106),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          child: const Icon(
                            FontAwesomeIcons.bowlingBall,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "For 3 people",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Text("21 September - 2024 at 15:30",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  form = GSForm.singleSection(
                      style: GSFormStyle(
                          backgroundSectionColor: Colors.black,
                          titleStyle: const TextStyle(
                              color: Colors.white, fontSize: 16.0)),
                      context,
                      fields: [
                        GSField.email(
                          tag: 'email',
                          title: 'Email',
                          weight: 12,
                          required: true,
                          maxLength: 100,
                          errorMessage: 'Please input your email',
                          value: 'dastras.saeed@gmail.com',
                        ),
                        GSForm.singleSection(context,
                            style: GSFormStyle(
                                backgroundSectionColor: Colors.black,
                                titleStyle: const TextStyle(
                                    color: Colors.white, fontSize: 16.0)),
                            fields: [
                              GSField.spinner(
                                  tag: "acronym",
                                  title: "Acronym",
                                  required: true,
                                  weight: 3,
                                  showTitle: true,
                                  onChange: (model) {
                                    //id = model!.id;
                                    setState(() {});
                                  },
                                  items: [
                                    SpinnerDataModel(name: "Mr.", id: 0),
                                    SpinnerDataModel(name: "Mrs.", id: 1)
                                  ]),
                              GSField.text(
                                tag: 'name',
                                hint: "Full name",
                                title: "Name",
                                weight: 5,
                                required: true,
                                maxLength: 200,
                                errorMessage: 'Please input your full name',
                                value: '...',
                              ),
                            ]),
                        GSField.mobile(
                          tag: 'phone',
                          title: 'Phone number',
                          weight: 12,
                          required: true,
                          maxLength: 100,
                          errorMessage: 'Please input your phone number',
                          value: '...',
                        ),
                        GSField.textPlain(
                          tag: 'annotations',
                          title: 'Annotations',
                          weight: 12,
                          required: false,
                          maxLength: 100,
                          value: '...',
                        ),
                        GSField.radioGroup(
                            tag: "radio",
                            searchable: false,
                            items: [
                              RadioDataModel(
                                  title:
                                      "I have read and accept the terms and conditions",
                                  isSelected: false)
                            ],
                            callBack: (value) {})
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          //TO DO
                          Get.to(Review(title: "Review"));
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
                          "Finish up",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
