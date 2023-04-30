

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();

  void _submitSearch(String searchQuery) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultsScreen(searchQuery)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Search for Stocks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onSubmitted: _submitSearch,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black,
                hintText: 'Search for something...',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                suffixIcon: GestureDetector(
                  onTap: () => _submitSearch(_searchController.text),
                  child: Icon(Icons.search, color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultsScreen extends StatelessWidget {
  final String searchQuery;

  ResultsScreen(this.searchQuery);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        canvasColor: Colors.black,
    ),
      home: Scaffold(
      appBar: AppBar(
        title: Text('Results for "$searchQuery"'),
      ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(height: 10),
          Image.asset('assets/images/img_1.png'),
          SizedBox(height: 10),
          // Text('Comparison Graph of real and predicted price for "$searchQuery"'),
          Text(
            'Comparison Graph of real and predicted price for "$searchQuery"',
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),

        ],
      ),

      //

    ),
    );
  }

}

