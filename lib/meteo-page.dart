import 'package:flutter/material.dart';

class MeteoPage extends StatefulWidget {
  @override
  _MeteoPageState createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  int counter = 0;

  void _increment() {
    setState(() {
      ++counter;
    });
  }

  void _decrement() {
    setState(() {
      --counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 18));

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
                _increment();
              },
              style: style,
            ),
            RaisedButton(
              child: Text(
                'Descrementer',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepOrange,
              onPressed: () {
                _decrement();
              },
            )
          ],
        ));
  }
}
