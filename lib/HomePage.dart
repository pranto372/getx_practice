import 'package:flutter/material.dart';

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
          onPressed: (){}, 
          child: Text("Click Me", style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
