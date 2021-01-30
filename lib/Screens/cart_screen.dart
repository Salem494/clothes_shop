import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/order_screen.dart';
import 'package:online_shopping/models/add_item_to_cart.dart';
import 'package:online_shopping/models/product.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  final Product product;

  const CartScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> products = Provider.of<CartItem>(context).products;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
            )),
        actions: [
           Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Colors.black38
                  )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>OrderScreen()));
                },
                child:Text('Order Now',style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),),
              )
            ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                if (products.isEmpty) {
                  return Center(
                    child: Text(
                      'NO ITEMS ADD',
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                } else if (products.isNotEmpty) {
                  return Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                        bottom: 10,
                      ),
                      child: Dismissible(
                        key: ObjectKey(products),
                        direction: DismissDirection.horizontal,
                        secondaryBackground: Container(
                          color: Colors.red,
                          child: Icon(Icons.delete),
                        ),
                        background: Container(
                          color: Colors.green,
                          child: Icon(Icons.check),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15
                          ),
                          child: ListTile(
                            title: Text(products[index].title),
                            subtitle: Text(products[index].description),
                            leading: CircleAvatar(
                              radius: 30,
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                child: Image.asset(products[index].image),
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            trailing: Text('\$${products[index].price}'),
                          ),
                        ),
                      ));
                } else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }),
        ),
    );
  }
}
