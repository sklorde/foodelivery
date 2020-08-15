import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:uimanager/app/widgets/categoria/categoria_widget.dart';
import 'package:uimanager/app/widgets/custom_appbar/custom_appbar_widget.dart';
import 'package:uimanager/app/widgets/produto/produto_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.02),
      appBar: CustomAppbarWidget(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 35),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.135,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CategoriaWidget(
                    descricao: 'Pizza',
                    imageUrl: 'https://i.imgur.com/Dy17ijn.png',
                  ),
                  CategoriaWidget(
                    descricao: 'Sorvete',
                    imageUrl: 'https://i.imgur.com/OzFFwrk.png',
                  ),
                  CategoriaWidget(
                    descricao: 'Bebida',
                    imageUrl: 'https://i.imgur.com/z8WN1Kd.png',
                  ),
                  CategoriaWidget(
                    descricao: 'Lanche',
                    imageUrl: 'https://i.imgur.com/wfxkw6f.png',
                  ),
                  CategoriaWidget(
                    descricao: 'Carne',
                    imageUrl: 'https://i.imgur.com/TMicXYc.png',
                  ),
                  CategoriaWidget(
                    descricao: 'Sorvete',
                    imageUrl: 'https://i.imgur.com/OzFFwrk.png',
                  ),
                  CategoriaWidget(
                    descricao: 'Sorvete',
                    imageUrl: 'https://i.imgur.com/OzFFwrk.png',
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Observer(
            builder: (_) {
              return ListView.separated(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                ),
                itemCount: controller.produtos.length,
                itemBuilder: (_, index) {
                  final produto = controller.produtos[index];

                  return ProdutoWidget(produto);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 15),
                  );
                },
              );
            },
          )),
        ],
      ),
    );
  }
}
