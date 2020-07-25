import 'package:mobx/mobx.dart';

part 'custom_appbar_controller.g.dart';

class CustomAppbarController = _CustomAppbarControllerBase
    with _$CustomAppbarController;

abstract class _CustomAppbarControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
