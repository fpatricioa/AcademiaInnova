import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quizscreen.dart';


class PracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness
          .dark, //para poner todo adelante la hora, bateria, linea etc es como un z/index
    ));

    // page
    return Scaffold(
      backgroundColor: Color(0xFF2D046E),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              Center(
                child: Image.network(
                  'https://peerbits-wpengine.netdna-ssl.com/wp-content/uploads/2016/03/prepster-icon.png',
                  width: 350,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Preguntas",
                style: TextStyle(
                  color: Color(0xFFA20CBE),
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
                    "INICIAR",
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
            ],
          ),
        ),
      ),
    );
  }
}
