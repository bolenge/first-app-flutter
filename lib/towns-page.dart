import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TownsPage extends StatefulWidget {
  @override
  _TownsPageState createState() => _TownsPageState();
}

class _TownsPageState extends State<TownsPage> {
  List<dynamic> listTowns;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Villes'),
      ),
      body: Center(
        child: Text('Liste des villes'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadTowns();
  }

  void loadTowns() {
    String url = "http://192.168.43.74:8000";

    http
      .get(Uri.parse(url))
      .then((resp) => {
            setState(() {
              this.listTowns = json.decode(resp.body)['results'];
            })
          })
      .catchError((onError) => {
        
      });
  }
}
