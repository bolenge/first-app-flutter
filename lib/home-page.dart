import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> listTowns;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: this.listTowns == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: this.listTowns == null ? 0 : this.listTowns.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.deepOrange,
                    child: Text(this.listTowns[index]['name']),
                  );
                }),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    loadTowns();
  }

  void loadTowns() {
    String url = 'http://192.168.43.74/fluuter';

    http.get(Uri.parse(url)).then((resp) {
      setState(() {
        print(resp);
        this.listTowns = json.decode(resp.body)['results'];
      });
    });
  }
}
