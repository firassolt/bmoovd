// lib/menu_button.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget menuBtn(String key, String currentView) {
  Color lightGray = const Color.fromARGB(255, 42, 42, 42);
  Color lightBlue = const Color.fromARGB(25, 13, 108, 242);
  return ElevatedButton(
    onPressed: () {
      Get.offAndToNamed("/" + key.replaceAll(" ", ""));
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
        key,
        textAlign: TextAlign.left,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget buildMenu(BuildContext context, Color gray, current) {
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
                style: TextStyle(color: Colors.white, fontSize: 12),
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
                menuBtn("Home", current),
                menuBtn("Sports Bar", current),
                menuBtn("Eat & Drink", current),
                menuBtn("Bowling", current)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
