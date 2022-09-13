import 'deneme.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var person = Deneme();

  void changeName() {
    person.name.value = 'Erhan';
  }

  void changeSurName() {
    person.surname.value = 'Aslan';
  }
}
