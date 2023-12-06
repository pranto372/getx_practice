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
            Get.bottomSheet(
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Text("Pranto"),
                    Text("Pranto"),
                    Text("Pranto"),
                    ElevatedButton(onPressed: ()=>{Get.back(closeOverlays: true)}, child: Text("Close"))
                  ],
                ),
              ),
              enableDrag: true,
              isDismissible: false,
              barrierColor: Colors.redAccent[1],
            );
          },
          child: const Text("Click Me", style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
