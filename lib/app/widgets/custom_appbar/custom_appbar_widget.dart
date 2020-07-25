import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final double _preferredHeight = 100;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, 100),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1.5,
                blurRadius: 2)
          ],
        ),
        width: MediaQuery.of(context).size.width,
        height: 110,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.card_giftcard,
                  size: 30,
                  color: Colors.orange,
                ),
                Text(
                  "FooDelivery",
                  style: TextStyle(
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.orange,
                  ),
                ),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}
