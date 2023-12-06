import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/SecondPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
          ),
          onPressed: (){
            Get.toNamed("/product");
          },
          child: const Text("Click Me", style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
