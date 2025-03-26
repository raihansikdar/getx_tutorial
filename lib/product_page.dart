import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Screen"),
      ),
      body: Column(
        children: [
          Text(args['title']),

          ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: const Text("data"))
        ],
      ),
    );
  }
}
