import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Practice",),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
          ),
          onPressed: (){
            Get.snackbar(
              "Hi", "Hello GetX",
              snackPosition: SnackPosition.BOTTOM,
              showProgressIndicator: true,
              backgroundColor: Colors.blueGrey,
              colorText: Colors.white,
              borderRadius: 5,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(2),
              icon: const Icon(Icons.exit_to_app, color: Colors.white,),
              isDismissible: false,
              duration: const Duration(seconds: 1),
              animationDuration: const Duration(milliseconds: 1000),
            );
          },
          child: const Text("Click Me", style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
