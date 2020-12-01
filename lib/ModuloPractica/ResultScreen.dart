import 'package:flutter/material.dart';
import 'quizscreen.dart';

class ResultScreen extends StatelessWidget {
  final int score; //declaramos la variable score para mostarr el resultado

  ResultScreen({this.score});

  @override
  Widget build(BuildContext context) {
    // pagina
    return Scaffold(
      backgroundColor: Color(0xFF2D046E),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: Center(
                  child: Image.network(
                      'https://icon-library.com/images/score-icon-png/score-icon-png-18.jpg'),
                ),
              ),
              Text(
                "Resultado",
                style: TextStyle(
                  color: Color(0xFFA20CBE),
                  fontSize: 35,
                ),
              ),
              Text(
                "$score/10",
                style: TextStyle(
                  color: Color(0xFFFFBA00),
                  fontSize: 60,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 40,
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "RENICIAR",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  color: Color(0xFFFFBA00),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "SALIR",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  color: Color(0xFF511AA8),
                  textColor: Colors.white,
                  onPressed: () {
                    // salimos con pop
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
