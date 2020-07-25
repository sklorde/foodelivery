import 'package:mobx/mobx.dart';

part 'pedidos_controller.g.dart';

class PedidosController = _PedidosControllerBase with _$PedidosController;

abstract class _PedidosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
