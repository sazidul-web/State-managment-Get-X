import 'package:flutter/material.dart';
import 'package:get_x/Controller/Tap_controller.dart';
import 'package:get/get.dart';
import 'package:get_x/main.dart';

class ThardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      controller.x.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
