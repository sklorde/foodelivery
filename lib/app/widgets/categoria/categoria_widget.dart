import 'package:flutter/material.dart';

class CategoriaWidget extends StatelessWidget {
  final String imageUrl;
  final String descricao;

  const CategoriaWidget(
      {Key key, @required this.imageUrl, @required this.descricao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 75,
              height: 75,
              color: Colors.black.withOpacity(0.88),
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Image.network(
                  imageUrl,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              descricao,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6,
              ),
            ),
          )
        ],
      ),
    );
  }
}
