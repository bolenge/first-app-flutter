import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Center(
        child:
            Text('Bienvenue à la page de Quiz, de questions coulent ici.. ;-)'),
      ),
    );
  }
}
