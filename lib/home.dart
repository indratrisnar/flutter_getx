import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_app/counter_app.dart';
import 'package:flutter_getx/route_management/page1.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GetX'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () => Get.to(Page1()),
            child: Text('Route Management'),
          ),
          ElevatedButton(
            onPressed: () => Get.to(CounterApp()),
            child: Text('Counter App'),
          ),
        ],
      ),
    );
  }
}
