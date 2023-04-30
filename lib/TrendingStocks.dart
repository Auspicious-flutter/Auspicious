import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trending Stocks',
      theme: ThemeData(
        canvasColor: Colors.black,
      ),
      home: TrendingStocks(),
    );
  }
}

class TrendingStocks extends StatefulWidget {
  @override
  _TrendingStocksState createState() => _TrendingStocksState();
}

class _TrendingStocksState extends State<TrendingStocks> {
  List<dynamic> _stocks = [];

  @override
  void initState() {
    super.initState();
    fetchTrendingStocks();
  }

  Future<void> fetchTrendingStocks() async {
    final response = await http.get(Uri.parse(
        'https://apidojo-yahoo-finance-v1.p.rapidapi.com/market/get-trending-tickers?region=india'),
        headers: {
          'x-rapidapi-key': 'b3982d5874mshdad2abff5d87359p1aee1ejsne788e808f187',
          'x-rapidapi-host': 'apidojo-yahoo-finance-v1.p.rapidapi.com',
        });
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _stocks = data['finance']['result'][0]['quotes'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        canvasColor: Colors.black,
    ),
    debugShowCheckedModeBanner: false,


    home: Scaffold(
      appBar: AppBar(
        title: Text('Trending Stocks'),
      ),
      body: ListView.builder(

        itemCount: _stocks.length,
        itemBuilder: (BuildContext context, int index) {
          final stock = _stocks[index];
          final logoUrl = stock['https://finance.yahoo.com'];
          final chartUrl = stock['https://finance.yahoo.com'];

          return ListTile(
            // leading: logoUrl != null
            //     ? Image.network(logoUrl)
            //     : null,
            leading: logoUrl != null ? Image.network(logoUrl) : Icon(Icons.image,color: Colors.white,),

            title: Text(stock['symbol'],style: TextStyle(color: Colors.white)),
            subtitle: Text(stock['shortName'],style: TextStyle(color: Colors.white)),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('\$${stock['regularMarketPrice']}',style: TextStyle(color: Colors.white)),
                if (chartUrl != null)
                  Image.network(chartUrl, height: 100),
              ],
            ),
          );
        },
      ),
    ),
    );
  }
}

