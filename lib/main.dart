import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/SecondPage.dart';
import 'Controller/Tap_controller.dart';
import 'FirstPage.dart';
import 'ThardPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController) {
              return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    tapController.x.toString(),
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
            GestureDetector(
                onTap: () {
                  controller.incresed();
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
                        'Incress value x',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // first page
                Get.to(() => FirstPage());
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
                      'Go to first page',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SecondPage());
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
                      'Go to Second page',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ThardPage());
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
                      'Go to thard page',
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
