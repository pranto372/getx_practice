import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/counter_state_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterStateController c = Get.put(CounterStateController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Obx(
          () => Text("Click:${c.count}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          c.increament();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
