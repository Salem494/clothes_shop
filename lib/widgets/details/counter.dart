import 'package:flutter/material.dart';

import 'cart_container.dart';


class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
//          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.only(right: 5.0,left: 5.0),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child:Icon(Icons.favorite_border,color: Colors.white),
        )
      ],
    );
  }
}