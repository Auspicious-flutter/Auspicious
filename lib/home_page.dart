import 'package:flutter/material.dart';
import 'package:untitled6/TrendingStocks.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 0),
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                        hintText: "Search Stocks",
                        // prefix: Icon(Icons.search),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 5, style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Image.asset(
                            'assets/images/nifty.png',
                            // Replace this with your Nifty image path
                            height: 80,
                          ),
                          const SizedBox(height: 10),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Image.asset(
                            'assets/images/sensex.png',
                            // Replace this with your Sensex image path
                            height: 80,
                          ),
                          const SizedBox(height: 10),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 1,
                color: Colors.white,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TOP  TRENDING STOCKS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 2,
                color: Colors.white,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrendingStocks()),
                  );
                },
                child: SingleChildScrollView(
                  child: Container(
                    height: 370,
                    width: 385,
                    child: Image.asset(
                      'assets/images/img2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SingleChildScrollView(
              //   child: Container(
              //     height: 370,
              //     width: 385,
              //     child: Image.asset(
              //       'assets/images/img2.png',
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),

    );
  }


}



