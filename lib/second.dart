import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondapp/deneme.dart';
import 'package:secondapp/my_controller.dart';

class Second extends StatelessWidget {
  Second({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx((() => Text('My surname is ${myController.person.surname}'))),
    );
  }
}
