import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/SecondPage.dart';

import 'HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=> HomePage(), transition: Transition.zoom),
        GetPage(name: '/product', page: ()=>SecondPage(), transition: Transition.rightToLeft),
      ],
    );
  }
}
