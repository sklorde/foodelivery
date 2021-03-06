import 'shared/repositories/postgres_repository.dart';
import 'package:uimanager/app/widgets/produto/produto_controller.dart';
import 'widgets/categoria/categoria_controller.dart';
import 'widgets/custom_appbar/custom_appbar_controller.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:uimanager/app/app_widget.dart';

import 'modules/start/start_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PostgresRepository()),
        Bind((i) => ProdutoController()),
        Bind((i) => CategoriaController()),
        Bind((i) => CustomAppbarController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: StartModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
