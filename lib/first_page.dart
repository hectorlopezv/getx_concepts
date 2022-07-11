import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_concepts/controllers/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Container(
          margin: EdgeInsets.all(20),
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFF89dad0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<TapController>(
                  builder: (tapController) {
                    return Text(
                      '${tapController.x.toString()}',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                Text(
                  "Tap",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
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
