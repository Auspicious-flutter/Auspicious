import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

// void main() {
//   runApp(MyApp());
// }

class MyAp extends StatefulWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAp> {
  final String apiKey = '2ea98611df044a1a8df1147b1d0ab2b7'; // Replace with your NewsAPI API key
  final String keyword = 'stock';

  List<dynamic> articles = [];

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<void> fetchNews() async {
    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/everything?q=$keyword&apiKey=$apiKey'));

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        setState(() {
          articles = jsonResponse['articles'];
        });
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print(e);
    }
  }

  void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Stock News',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stock News'),
        ),
        body: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ListTile(
              // leading: article['urlToImage'] != null
              //     ? Image.network(
              //   article['urlToImage'],
              //   errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
              //     // Use a default image when the article image fails to load
              //     // return Image.asset('assets/images/nifty.png');
              //     return
              //       Image.
              //       asset
              //         (
              //
              //         'assets/images/sensex.png'
              //         ,
              //
              //         fit
              //             : BoxFit.cover,
              //
              //         width
              //             :
              //         100
              //         ,
              //
              //         height
              //             :
              //         100
              //         ,
              //       );
              //   },
              // )
              //     : Image.asset('assets/images/stock.jpg'),

              // leading: article['urlToImage'] != null
              //     ? Image.network(article['urlToImage'])
              //     : null,


              //
              // leading: article['urlToImage'] != null
              //     ? Image.network(article['urlToImage'])
              //     : Image.asset(
              //   'assets/images/stock.jpg',
              //   width: 50,
              //   height: 50,
              //   fit: BoxFit.cover,
              // ),
              //
              // leading: article['urlToImage'] != null && article['urlToImage'].isNotEmpty
              //     ? Image.network(article['urlToImage'])
              //     : Image.asset("assets/images/intro.png"),
              leading: article['urlToImage'] != null
                  ? Image.network(article['urlToImage'])
                  : Image.network('https://picsum.photos/200/300/?blur',),



              title: Text(article['title'],style: TextStyle(color: Colors.white)),
              subtitle: Text(article['description'],style: TextStyle(color: Colors.white)),
              onTap: () => launchUrl(article['url']),
            );
          },
        ),


      ),
    );
  }
}
