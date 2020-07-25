import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:uimanager/app/widgets/custom_appbar/custom_appbar_widget.dart';
import 'pedidos_controller.dart';

class PedidosPage extends StatefulWidget {
  final String title;
  const PedidosPage({Key key, this.title = "Pedidos"}) : super(key: key);

  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends ModularState<PedidosPage, PedidosController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(),
      body: Column(
        children: <Widget>[
          Text('oi'),
        ],
      ),
    );
  }
}
