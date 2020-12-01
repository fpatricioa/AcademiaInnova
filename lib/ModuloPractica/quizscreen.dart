import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'QuizHelper.dart';
import 'package:http/http.dart' as http;
import 'ResultScreen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String apiURL = "https://web.innovatechdesign.com/";

  QuizHelper quizHelper;
  int preguntaActual = 0;
  int totalSeconds = 30; //variable para el total de tiempo por pregunta
  int mostrarTiempo = 0; //variable para mostrar los segundos transcurridos
  Timer timer; //variable para tiempo progresivo timeline

  int score =
      0; //la unica funcion es para chequear la respuesta y mostrar el score final

  @override
  void initState() {
    fetchAllQuiz();
    super.initState();
  }

  fetchAllQuiz() async {
    var response = await http.get(apiURL);
    var body = response.body;

    var json = jsonDecode(body);
    //print(body); //esto es solamente prueba borrar
    setState(() {
      quizHelper =
          QuizHelper.fromJson(json); //hasta aqui se muestra las preguntas
      //con el siguiente codigo mostramos las preguntas y alternativas
      quizHelper.items[preguntaActual].incorrecto
          .add(quizHelper.items[preguntaActual].correcto);
      quizHelper.items[preguntaActual].incorrecto.shuffle();
      initTimer(); //inicalizamos el contador en la principal setState
    });
  }

  initTimer() {
    //inicio inicalizador de tiempo solamente  --------------------
    timer = Timer.periodic(Duration(seconds: 1), (t) {
      if (t.tick == mostrarTiempo) {
        print("Tiempo completado");
        t.cancel();
        cambioDePregunta();
        //invoacamos al metodo para reiniciar el segundo transcurrido
      } else {
        setState(() {
          mostrarTiempo = t.tick;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  } //fin inicalizador de tiempo solamente -------------------------------------

  checkAnswer(respuesta) {
    //inicio aqui capturamos las repuestas correctas e incorrectas --
    String correctAnswer = quizHelper.items[preguntaActual].correcto;
    if (correctAnswer == respuesta) {
      score += 1;
      //print("correcto");
    } else {
      //print("Wrong");
    }
    cambioDePregunta();
  } //fin de la captura de las repuestas correctas e incorrectas ---------------

  cambioDePregunta() {
    //inicio metodo para cambio alternativas
    timer.cancel(); //invocamos a cancelar el segundo para inicair de cero

    // comprobamos si es la ultima pregunta para mostrar el score
    if (preguntaActual == quizHelper.items.length - 1) {
      // print("Prueba completada");
      //print("Puntuación: $score");
      // navegar al screen del resultado
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: score,
          ),
        ),
      );
    } else {
      setState(() {
        preguntaActual += 1;
      });

      quizHelper.items[preguntaActual].incorrecto
          .add(quizHelper.items[preguntaActual].correcto);
      quizHelper.items[preguntaActual].incorrecto.shuffle();
      initTimer();
    }
  } //fin metodo para cambio alternativas

  @override
  Widget build(BuildContext context) {
    if (quizHelper != null) {
      return Scaffold(
        backgroundColor: Color(0xFF2D046E),
        body: Container(
          //alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                            "Dificultad > ${quizHelper.items[preguntaActual].dificultad}",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFFFFBA00),
                                fontWeight: FontWeight.bold)),
                        Text(
                          "$mostrarTiempo s",
                          style: TextStyle(
                            color: Color(0xFFFFBA00),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //nombre del curso en especifico
                Container(
                  color: Colors.pink,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    child: Text(
                        "Curso ${quizHelper.items[preguntaActual].cursos}",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                //question
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Preg. ${quizHelper.items[preguntaActual].preguntas} ", //el items es el primer objeto del array
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),

                // options
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: Column(
                    children: quizHelper.items[preguntaActual].incorrecto
                        .map((option) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            checkAnswer(
                                option); //invocamos al metodo al presionar boton para verificar la respuesta y le damos el parametro de option que se creo dentro del dildreen
                          },
                          color: Color(0xff511AA8),
                          colorBrightness: Brightness
                              .dark, //para dar color blaco y colocar encima
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            option,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        //esto es el preloader cargando
        backgroundColor: Color(0xFF2D046E),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
