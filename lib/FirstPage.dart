import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/Controller/Tap_controller.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                  controller.Dcressvlaue();
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
                        'Dicress value x',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
              ),
            ])));
  }
}
