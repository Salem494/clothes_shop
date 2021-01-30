import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shopping/Screens/cart_screen.dart';
import 'package:online_shopping/models/product.dart';
import 'file:///C:/Users/Salem/AndroidStudioProjects/online_shopping/lib/widgets/home/category.dart';
import 'file:///C:/Users/Salem/AndroidStudioProjects/online_shopping/lib/widgets/home/itemcard.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  final Product product;

  const HomeScreen({Key key, this.product}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    'HandBag',
    'Jewellery',
    "FootWare",
    'Dresses',
    'More Clothes'
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: FlatButton(
            onPressed: (){
              Navigator.of(context).pop();
              },
            child:Icon(Icons.arrow_back_outlined),
//            color: Colors.black45,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "clothes Shopping",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),

            Categories(),


            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) =>
                        ItemCard(
                            product: products[index],
                            press: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>DetailsScreen(
                                    product: products[index],
                                  ),
                              ));
                            }
                            )),
              ),
            ),
          ],
        )

    );
  }

//  Widget buildLine(int index){
//    return GestureDetector(
//      onTap: (){
//        setState(() {
//          currentIndex = index;
//        });
//      },
//        child : Column(
////          crossAxisAlignment: CrossAxisAlignment.start,
////          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: [
//            Row(
////               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  Text(categories[index],style: TextStyle(
//                    color:currentIndex == index ? Colors.grey.shade800 : Colors.grey.shade400,
//                    fontWeight: FontWeight.bold
//                  ),),
//                ],
//              ),
//            Container (
//              width: 20,
//              height: 2,
//              color:currentIndex == index ? Colors.black : Colors.transparent,
//            ),
//          ],
//        ),
//      ),
//    );
//
//  }

}
