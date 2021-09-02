import 'package:flutter/material.dart';

class MeteoPage extends StatefulWidget {
  @override
  _MeteoPageState createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meteo Page'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Compteur de Meteo : ${counter}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              child: Text('Incrementer'),
              onPressed: () {
                setState(() {
                  ++counter;
                });
              },
              style: ButtonStyle(),
            )
          ],
        ));
  }
}
