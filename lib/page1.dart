import 'package:flutter/material.dart';
import 'package:flutter_getx/page2.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(Page2())?.then((value) => print(value ?? 'No Result'));
                Get.toNamed('/two');
              },
              child: Text('To Page 2'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(Page2(data: 'Minta Koding'))
                    ?.then((value) => print(value ?? 'No Result'));
              },
              child: Text('To Page 2 With Data'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.off(Page2());
              },
              child: Text('To Page 2 Replace'),
            ),
          ],
        ),
      ),
    );
  }
}
