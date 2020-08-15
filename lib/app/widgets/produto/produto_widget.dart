import 'package:flutter/material.dart';
import 'package:uimanager/app/shared/Models/Produto.dart';

class ProdutoWidget extends StatelessWidget {
  Produto produto;
  ProdutoWidget(this.produto);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.orange[200].withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: ClipOval(
                child: Image.network(
                  produto.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 12),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      produto.nome,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 2,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      produto.descricao,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'R\$ ${produto.valor.toStringAsFixed(2).replaceAll('.', ',')}',
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
