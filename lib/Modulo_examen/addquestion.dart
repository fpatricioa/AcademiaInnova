import 'package:academiainnova/Modulo_examen/database.dart';
import 'package:academiainnova/Modulo_examen/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  final String quizId;
   AddQuestion({this.quizId})

   @override
  _AddQuestionState createState() => _AddQuestionState();
   
}


class _AddQuestionState extends State<AddQuestion>{
  final _formkey = GlobalKey<FormState>();
  String question, option1, option2, option3, option4;
  bool _isloading;
  DatabaseService databaseService =new DatabaseService();
  UploadQuestionData() async{
    if(_formkey.currentState.validate()){
      setState(() {
        _isloading = true;
        
      });
      Map< String, String> questionMap ={
        "question": question,
        "option1": option1,
        "option2": option2,
        "option3": option3,
        "option4": option4

      };
       await databaseService.addQuestionData(questionMap, widget.quizId).then((value) {
      setState(() {
        _isloading = false;
        
      });
       });
    }
  }
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
      body: _isloading ? Container(
        child: Center(child: CircularProgressIndicator(),),
      ) : Container()
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TextFormField(
              validator: (val) => val.isEmpty ? "Enter Question" : null,
              decoration: InputDecoration(
                hintText: "Question",
              ),
              onChanged: (val) {
                question = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) => val.isEmpty ? "Enter Option1" : null,
              decoration: InputDecoration(
                hintText: "Option1 (correct Answer)",
              ),
              onChanged: (val) {
                option1 = val;
              },
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              validator: (val) => val.isEmpty ? "Enter Option2" : null,
              decoration: InputDecoration(
                hintText: "Option2",
              ),
              onChanged: (val) {
                option2 = val;
              },
            ), //TextFormField
            SizedBox(
              height: 6,
            ), //SizedBox
            TextFormField(
              validator: (val) => val.isEmpty ? "Enter Option3" : null,
              decoration: InputDecoration(
                hintText: "Option3",
              ),
              onChanged: (val) {
                option3 = val;
              },
            ), //TextFormField
            SizedBox(
              height: 6,
            ), //SizedBox

            TextFormField(
              validator: (val) => val.isEmpty ? "Enter Option4" : null,
              decoration: InputDecoration(
                hintText: "Option4",
              ),
              onChanged: (val) {
                option4 = val;
              },
            ), 
            Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
               
            child: blueButton(context: context, 
                label: "Submit",)
                buttonWidth: MediaQuery.of(context).size.width/2 - (36
                ),
                ),
             
            SizedBox(width: 24 ,),
            GestureDetector(
          
              OnTap (){
                
                UploadQuestionData();
              },
            child: blueButton(context: context, 
                label: "Add Question",)
                buttonWidth: MediaQuery.of(context).size.width/2 - 36  
                ), 

                ],
                ),
                SizedBox(height: 60,
                ),
                ],), 
                ); 
  }
}