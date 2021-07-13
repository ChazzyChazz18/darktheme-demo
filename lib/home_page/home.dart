import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:project_a/models/country.dart';

Future<Country> fetchCountry() async {
  final response = await http
      .get(Uri.https('jsonplaceholder.typicode.com', 'users/1/todos'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Country.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load the country');
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Country> countryList;

  @override
  void initState() {
    super.initState();
    countryList = fetchCountry();
  }

  onItemTap() {}

  @override
  Widget build(BuildContext context) {
    final itemLayout = ListTile(
      leading: Text("🌟"),
      title: Text("Country Name"),
      subtitle: Column(
        children: <Widget>[
          Text("Capital: Name"),
          Text("Continent: Name"),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      isThreeLine: true,
      onTap: () => onItemTap,
    );

    final customBody = ListView.builder(
      itemBuilder: (_, index) => itemLayout,
      itemCount: 100,
      padding: EdgeInsets.symmetric(vertical: 8.0),
    );

    /*final customBody2 = FutureBuilder<Country>(
        future: countryList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.name);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
        });*/

    return customBody;
  }
}
