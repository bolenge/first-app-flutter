import 'package:flutter/material.dart';
import './home-page.dart';
import './gallery-page.dart';
import './meteo-page.dart';
import './quiz-page.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.deepOrange)),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("./images/profile.png"),
                  radius: 30,
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.white,
                Colors.deepOrange,
              ])),
            ),
            ListTile(
              title: Text('Accueil', style: TextStyle(fontSize: 15)),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Quiz', style: TextStyle(fontSize: 15)),
              leading: Icon(Icons.question_answer),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Météo', style: TextStyle(fontSize: 15)),
              leading: Icon(Icons.margin),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MeteoPage())
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Galerie', style: TextStyle(fontSize: 15)),
              leading: Icon(Icons.image),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryPage())
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Accueil',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Hello World !',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
