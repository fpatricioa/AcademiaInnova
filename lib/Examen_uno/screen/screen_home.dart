import 'package:flutter/material.dart';
import '../model/api_adaptor.dart';
import '../model/model_quiz.dart';
import '../screen/screen_quiz.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<Quiz> quizs = [
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  // ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Quiz> quizs = [];
  bool isLoading = false;

  _fetchQuizs() async {
    setState(() {
      isLoading = true;
    });
    final response =
        await http.get('https://flutter-drf-quiz.herokuapp.com/quiz/3/');

    if (response.statusCode == 200) {
      setState(() {
        quizs = parseQuiz(utf8.decode(response.bodyBytes));
        isLoading = false;
      });
    } else {
      throw Exception('Falló al cargar los datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              title: Text('Mi prueba academica'),
              backgroundColor: Colors.deepPurple,
              leading: Container(),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/image/usuario.png',
                    width: width * 0.4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.024),
                ),
                Text(
                  'Practica semanal',
                  style: TextStyle(
                      fontSize: width * 0.075, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Indicaciones para realizar el cuestionario. \n Léala con atención y haga clic en hacer la prueba ahora',
                  style: TextStyle(
                      fontSize: width * 0.045, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.036),
                ),
                _buildStep(width, '1. Resuelva 3 preguntas aleatorios.'),
                _buildStep(width, '2. Lea la pregunta atentamente, y responda'),
                _buildStep(width, '3. Desafío hacia la puntuación perfecta!'),
                Padding(
                  padding: EdgeInsets.all(width * 0.048),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: width * 0.036),
                  child: Center(
                    child: ButtonTheme(
                      minWidth: width * 0.8,
                      height: height * 0.05,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RaisedButton(
                          child: Text(
                            'Hacer la prueba ahora',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          color: Colors.deepPurple,
                          onPressed: () {
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Row(
                                children: <Widget>[
                                  CircularProgressIndicator(),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.036),
                                  ),
                                  Text('Cargando...')
                                ],
                              ),
                            ));
                            _fetchQuizs().whenComplete(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QuizScreen(
                                            quizs: quizs,
                                          )));
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          width * 0.048, width * 0.024, width * 0.048, width * 0.024),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.check_box,
            size: width * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title)
        ],
      ),
    );
  }
}
