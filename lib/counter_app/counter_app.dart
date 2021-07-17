import 'package:flutter/material.dart';
import 'package:flutter_getx/counter_app/controller_counter.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  var _cCounter = Get.put(ControllerCounter());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            _cCounter.counter.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _cCounter.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
