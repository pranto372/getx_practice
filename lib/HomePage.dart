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
            Get.defaultDialog(
              title: "Delete Alert!",
              titlePadding: const EdgeInsets.all(10),
              titleStyle: const TextStyle(color: Colors.white),
              middleText: "Once delete, you can't get it back",
              middleTextStyle: const TextStyle(color: Colors.white),
              backgroundColor: Colors.redAccent,
              radius: 4,
              textConfirm: "Confirm",
              confirmTextColor: Colors.white,
              textCancel: "Not Now",
              cancelTextColor: Colors.white,
              onCancel: () => {Get.back(closeOverlays: true)},
              onConfirm: () => {Get.back(closeOverlays: true)},
              barrierDismissible: false,
              content: const Column(
                children: [
                  Text("Pranto Deb", style: TextStyle(color: Colors.white),),
                  Text("Jibon Deb", style: TextStyle(color: Colors.white),),
                  Text("Joy Deb", style: TextStyle(color: Colors.white),),
                  Text("Amit Deb", style: TextStyle(color: Colors.white),),
                ],
              )
            );
          },
          child: const Text("Click Me", style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
