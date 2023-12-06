import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/HomePage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page",),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
          ),
          onPressed: (){
            Get.offAll(HomePage());
          },
          child: const Text("Click Me", style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
