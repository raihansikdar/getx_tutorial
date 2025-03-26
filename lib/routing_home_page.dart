import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/product_page.dart';

class RoutingHomePage extends StatelessWidget {
  const RoutingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
              Get.to(()=> const ProductPage(),arguments: {
                'title': 'Flutter with GetX',
                'id': 101,
              });
              },
              child: const Text("data"))
        ],
      ),
    );
  }
}
