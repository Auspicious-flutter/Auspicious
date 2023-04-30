import 'package:flutter/material.dart';
import 'package:untitled6/IntroPage.dart';
// import 'package:untitled6/Splash.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFf283cd),
      //
      // title: const Text('demo'),


        body:
        Column(
          children: [
            Container(
              width:600,
              height: 65,
              padding: EdgeInsets.only(top: 30, left: 10),
              margin: EdgeInsets.only(top: 30.0, left: 10),
              child: Text(
                'INFORMATION REGARDING STOCKS',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              width: 400,
              height: 580,
              padding: EdgeInsets.only(top: 5, left: 10),
              margin: EdgeInsets.only(top: 5, left: 10, right: 20,),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'A stock, also known as equity, is a security that represents the ownership of a fraction of the issuing corporation. Units of stock are called shares, which entitles the owner to a proportion of the corporation\'s assets and profits equal to how much stock they own. Stocks are bought and sold predominantly on stock exchanges and are the foundation of many individual investors portfolios. Stock trades have to conform to government regulations meant to protect investors from fraudulent practices.\n',
                    ),
                    TextSpan(
                      text: 'KEY TAKEAWAYS\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: '\u2022 A stock is a form of security that indicates the holder has proportionate ownership in the issuing corporation and is sold predominantly on stock exchanges.\n',
                    ),
                    TextSpan(
                      text:  '\u2022 Corporations issue stock to raise funds to operate their businesses. There are two main types of stock: common and preferred.\n',
                    ),
                    TextSpan(
                      text: '\u2022 Historically, stocks have outperformed most other investments over the long run.',
                    ),
                  ],
                ),
              ),


            ),

            GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>IntroPage()));
                },
              child: Container(
                width: 340,
                height: 50,
                padding: EdgeInsets.only(top: 3, left: 10,),
                margin: EdgeInsets.only(top: 35.0, left: 6,),

                decoration: BoxDecoration(
                  color: Color(0xFFf5f7f7),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color:Colors.black,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(5,4),
                    ),
                  ],
                ),
                child: Center(child: Text("NEXT ", style:

                  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,


                  ),)
                ),
              ),
            ),
          ],
        ),



    );


  }



}



