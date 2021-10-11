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
        child: this.listTowns == null ? CircularProgressIndicator() :
          ListView.builder(
            itemCount: this.listTowns == null ? 0 : this.listTowns.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.white,
                    child: Text(
                      this.listTowns[index]['name'],
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {

                    },
                  ),
                ),
              );
            }
          ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loadTowns();
  }

  void loadTowns() {
    String url = "http://192.168.43.74:8000/towns";

    http
      .get(Uri.parse(url))
      .then((resp) => {
            setState(() {
              this.listTowns = json.decode(resp.body)['results'];
            })
          })
      .catchError((err) => {
        print(err)
      });
  }
}
