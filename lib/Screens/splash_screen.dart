import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:online_shopping/Screens/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';


class Splash extends StatefulWidget  {
  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: null,
      body: SplashScreen(
        title:  Text('Welcome Our clothes\n Shopping', style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 30.0,
            fontWeight: FontWeight.w700
        ),),
        seconds:10,
        image: Image.asset("assets/splash.gif",width: 800,height: 600,fit: BoxFit.fill),
        navigateAfterSeconds: HomeScreen(),
        photoSize: 170,
        loaderColor: Colors.black38,
        loadingText: Text('Waiting Please',style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade600
        ),),

      )
    );
  }
}
