// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled6/Splash.dart';
// import 'package:untitled6/Splash.dart';
// import 'package:untitled6/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
       theme: ThemeData(

         // ignore: deprecated_member_use
         canvasColor: Color(0xFFADABAB),
  //
  //        primarySwatch: Colors.yellow,
      ),
      home: Splash(),
    );
  }
}

