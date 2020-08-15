import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:uimanager/app/shared/Models/Produto.dart';
import 'package:uimanager/app/shared/repositories/postgres_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final postgres = Modular.get<PostgresRepository>();

  _HomeControllerBase() {
    _init();
  }

  _init() async {
    produtos.addAll(await postgres.getProdutos());
  }

  @observable
  ObservableList<Produto> produtos = <Produto>[].asObservable();
}
