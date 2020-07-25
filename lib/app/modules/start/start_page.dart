import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:uimanager/app/modules/start/pages/pedidos/pedidos_page.dart';
import 'package:uimanager/app/modules/start/submodules/home/home_module.dart';
import 'start_controller.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        children: <Widget>[
          RouterOutlet(module: HomeModule()),
          PedidosPage(),
          PedidosPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageViewController,
        builder: (context, snapshot) {
          return CurvedNavigationBar(
            index: controller.pageViewController?.page?.round() ?? 0,
            onTap: (index) {
              controller.pageViewController.jumpToPage(index);
            },
            items: [
              Icon(Icons.home, color: Colors.orange),
              Icon(Icons.view_list, color: Colors.orange),
              Icon(Icons.person, color: Colors.orange),
            ],
            backgroundColor: Colors.grey.withOpacity(0.02),
            animationDuration: Duration(milliseconds: 400),
          );
        },
      ),
    );
  }
}
