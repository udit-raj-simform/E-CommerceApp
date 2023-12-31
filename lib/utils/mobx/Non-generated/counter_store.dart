import 'package:e_commerce_app/values/app_globals/app_exports.dart';

class Counter2 {
  Observable counter = Observable(0);

  late Action incrementCounter;
  late Action decrementCounter;

  Counter2() {
    incrementCounter = Action(() {
      counter.value++;
    });
    decrementCounter = Action(() {
      counter.value--;
    });
  }
}
