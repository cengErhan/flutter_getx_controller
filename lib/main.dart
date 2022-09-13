import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondapp/deneme.dart';
import 'package:secondapp/my_controller.dart';
import 'package:secondapp/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Obx(() => Text('My name is ${myController.person.name}')),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                myController.changeName();
              },
              child: const Text(
                'Change Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Second(),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  myController.changeSurName();
                },
                child: const Text('Change Surname'))
          ],
        ),
      ),
    );
  }
}
