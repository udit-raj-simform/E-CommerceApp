import '../../../values/app_globals/app_exports.dart';

part 'counter_store.g.dart';

class CounterStore = Counter with _$Counter;

abstract class Counter with Store {
  @observable
  int count = 0;

  @action
  void incrementCount() {
    count++;
  }

  @action
  void decreaseCount() {
    count--;
  }
}
