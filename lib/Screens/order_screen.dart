import 'package:flutter/material.dart';
import 'package:online_shopping/Screens/home_screen.dart';
import 'package:online_shopping/models/add_item_to_cart.dart';
import 'package:online_shopping/models/product.dart';
import 'package:online_shopping/widgets/home/itemcard.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {

  String title = '"We Will Send Your Order As Soon As."';
  final Product product;

  OrderScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//  final removeItem =  Provider.of<ItemCard>(context,listen: false).product;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: FlatButton(
          child: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text('your Order',style: TextStyle(
          color: Colors.black45
        ),),
      ),
      body: Column(
        children: [
         SizedBox(height: 30,),
          FlatButton(
              child: Text('Order Total',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black45
          ),),

          ),
          SizedBox(height: 15,),
          Text('\$${570}',style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Text('${title.toUpperCase()} \n Lorem Ipsum is simply dummy text of the printing',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),),
          ),
          SizedBox(height: 20,),
          Image.asset('assets/delivery.jpg'),
          Spacer(),
          FlatButton(
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.redAccent.shade200,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>HomeScreen()
                ));
              }, child: Text(
            'Back To Home',style: TextStyle(
            color: Colors.white,

          ),
          )),
          Spacer(),

        ],
      ),
    );
  }
}
