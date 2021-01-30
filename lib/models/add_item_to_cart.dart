import 'package:flutter/material.dart';
import 'package:online_shopping/models/product.dart';
import 'package:provider/provider.dart';

class CartItem extends ChangeNotifier

{
  List<Product> products =[];

  addProduct(Product product){
    products.add(product);
    notifyListeners();
  }

  deleteProduct(Product product){
    products.remove(product);
    notifyListeners();
  }

}