import 'package:flutter/material.dart';
import 'package:flutter_getx/route_management/page3.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  final String? data;

  Page2({this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
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
            Text(data ?? 'No Data'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'Hello From Page 2');
              },
              child: Text('Back With Data'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(Page3());
                // Get.toNamed('/three');
              },
              child: Text('To Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
