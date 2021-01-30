
import 'package:online_shopping/widgets/details/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shopping/models/product.dart';

import 'cart_screen.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products[0].color,
      appBar: AppBar(
        backgroundColor:products[0].color,
        elevation: 0,
        leading: FlatButton(
           child:Icon(Icons.arrow_back_outlined),
//            color: Colors.black45,
          onPressed: (){
             Navigator.of(context).pop();
          },
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black45),
                SizedBox(
                  width: 15,
                ),
                FlatButton(child:Icon(Icons.shopping_cart),onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>CartScreen()));
                },),
              ],
            ),
          )
        ],
      ),
      body: Body(product:product)
    );
  }
}
