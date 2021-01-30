import 'package:flutter/material.dart';
import 'package:online_shopping/models/add_item_to_cart.dart';
import 'package:online_shopping/models/product.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
   final cartItem = Provider.of<CartItem>(context,listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: FlatButton(
              child:Icon(Icons.shopping_cart),
              color: product.color,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {

                  cartItem.addProduct(product);

                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(
                      seconds: 3
                    ),
                    content: Text('Successful Add Cart!',textAlign: TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    backgroundColor: Colors.black45,
                    elevation: 3,
                  ));
                },
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}