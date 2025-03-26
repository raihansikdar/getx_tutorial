import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/counter_app/counter_ui_screen.dart';
import 'package:getx_tutorial/routing_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Tutorial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RoutingHomePage(),
    );
  }
}


