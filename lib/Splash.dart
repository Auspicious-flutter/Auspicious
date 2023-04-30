import 'package:flutter/material.dart';

import 'home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) :super(key:key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 3000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(
      title:'GFG',)));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
          child: Container(
              color: Colors.black,
              width: 500,
              height: 500,
              child: Image.asset('assets/images/stock1.jpg') )


      )

    );
  }
}