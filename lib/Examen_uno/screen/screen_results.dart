import 'package:flutter/material.dart';
import '../model/model_quiz.dart';
import '../screen/screen_home.dart';

class ResultScreen extends StatelessWidget {
  List<int> answers;
  List<Quiz> quizs;

  ResultScreen({this.answers, this.quizs});

  @override
  Widget build(BuildContext context) {
    Size screensSize = MediaQuery.of(context).size;
    double width = screensSize.width;
    double height = screensSize.height;

    int score = 0;
    for (int i = 0; i < quizs.length; i++) {
      if (quizs[i].answer == answers[i]) {
        score += 1;
      }
    }

    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Score'),
              backgroundColor: Colors.deepPurple,
              leading: Container(),
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.deepPurple),
                    color: Colors.deepPurple),
                width: width * 0.85,
                height: height * 0.5,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: width * 0.048),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                          color: Colors.white),
                      width: width * 0.73,
                      height: height * 0.3,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                0, width * 0.048, 0, width * 0.012),
                            child: Text(
                              'Gracias!',
                              style: TextStyle(
                                  fontSize: width * 0.055,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            'Tu puntaje es',
                            style: TextStyle(
                                fontSize: width * 0.048,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            score.toString() + '/' + quizs.length.toString(),
                            style: TextStyle(
                                fontSize: width * 0.21,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Padding(
                            padding: EdgeInsets.all(width * 0.012),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: width * 0.048),
                      child: ButtonTheme(
                        minWidth: width * 0.73,
                        height: height * 0.05,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                            }));
                          },
                          child: Text('Ir a inicio'),
                          color: Colors.white,
                          textColor: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
