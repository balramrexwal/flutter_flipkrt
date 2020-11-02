import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_flipkrt/screens/home_screen.dart';
import 'package:flutter_flipkrt/screens/splashscreen.dart';
import 'package:flutter_flipkrt/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'FlipKart Clone',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme:
        AppBarTheme(color: Color(Constants.FLIPKART_BLUE), elevation: 5)),
    //home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      Constants.ROOT_ROUTE: (BuildContext context) => SplashScreen(),
      Constants.HOME_ROUTE: (ctx) => HomeScreen()
    },
  ));
}