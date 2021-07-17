import 'package:flutter/material.dart';
import 'package:flutter_getx/route_management/page1.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offAll(Page1());
              },
              child: Text('Replace All to Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
