import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/counter_app/counter_controller.dart';

class CounterUiScreen extends StatefulWidget {
  const CounterUiScreen({super.key});

  @override
  State<CounterUiScreen> createState() => _CounterUiScreenState();
}

class _CounterUiScreenState extends State<CounterUiScreen> {

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    log("---Rebuilt");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Counter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            // GetBuilder<CounterController>(
            //   builder: (controller) {
            //     return Text(controller.count.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),);
            //   }
            // ),


          Obx(()=> Text(controller.count.value.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),

            ElevatedButton(onPressed: (){
              setState(() {

              });
            }, child: Text("data"))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increaseMethod();
        },
        child: Icon(Icons.add),),

    );
  }
}
