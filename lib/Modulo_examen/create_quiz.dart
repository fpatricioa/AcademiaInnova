import 'dart:html';

import 'package:flutter/material.dart';
import 'package:academiainnova/Modulo_examen/database.dart';

class CreateQuiz extends StatefulWidget {
  @override
  _CreateQuizState createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  final _formkey = GlobalKey<FormState>();
  String quizImageUrl, quizTitle, quizDescription, quizId;
  DatabaseService databaseService = new DatabaseService();
  bool _isLoading = false;
  creteQuizOnLine() async {
    if (_formkey.currentState.validate()) {

    }
    setState(() {
      _isLoading = true;
    });
    
    quizId = randomAlphaNumeric(16);
    Map<String, String> quizMap = {
      "quizId": quizId,
      "quizImageurl": quizImageUrl,
      "quizTitle": quizTitle,
      "quizDescrition": quizDescription
    };

    await databaseService.addQuizData(quizMap, quizId).then((value) {
     setState(() {
       _isLoading = false;
       Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => AddQuestion(
          
        )) );//AddQuestion,  MaterialPageRoute
       
     });
    });
  }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBar(context)'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87), //IconThemeData
        brightness: Brightness.light,
      ),
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Form(
              key: _formkey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? "Enter Image Url" : null,
                      decoration: InputDecoration(
                        hintText: "Quiz Image Url",
                      ),
                      onChanged: (val) {
                        quizImageUrl = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? "Enter Quiz Title" : null,
                      decoration: InputDecoration(
                        hintText: "Quiz Title",
                      ),
                      onChanged: (val) {
                        quizTitle = val;
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      validator: (val) => val.isEmpty ? "Enter Quiz Description" : null,
                      decoration: InputDecoration(
                        hintText: "Quiz Description",
                      ),
                      onChanged: (val) {
                        quizDescription = val;
                      },
                    ),
                    Spacer(),
                    GestureDetector(),
                    onTap (){
                      creteQuizOnline();
                    },
                    blueButton(context, "Create Quiz"),
                  ],
                ),
              ),
            ),
    );
  }
}
