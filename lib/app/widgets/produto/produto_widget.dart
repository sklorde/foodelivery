import 'package:flutter/material.dart';

class ProdutoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.orange[200].withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      height: 130,
      child: Row(
        children: <Widget>[
          Image.network(
            'https://www.hamburguerdeorigem.com.br/images/uploaded/homeburger/90269284cd465b4f79e7d7fbb5891eb3.png',
            height: 120,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'CHEDDAR BEEF',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 2,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Hamburguer com cheddar e 1 fatia de carne',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'R\$ 9,90',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.orange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}