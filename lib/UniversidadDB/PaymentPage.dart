import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserInformation extends StatefulWidget {
  @override
  _UserInformationState createState() => _UserInformationState();
}

class ReviewService {//para extraer data de la bse de datos
  getLastReview() {
    return FirebaseFirestore.instance.collection('ACADEMIA').get();
  }
}

class _UserInformationState extends State<UserInformation> {
  bool reviewFlag = false;
  var reviews;
  @override
  void initState() {
    super.initState();
    ReviewService().getLastReview().then((QuerySnapshot docu) {
      if (docu.docs.isNotEmpty) {
        reviewFlag = true;
        reviews = docu.docs[5].data();
        print(reviews);
        if (reviews.hasData) {
          final count = reviews['NAME'].toString();
          print(count);
          for (var i = 1; i <= count.length; i++) {
            final catName = reviews['CARRERA' + i.toString()];
            print(catName);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Material(
            elevation: 7.0,
            borderRadius: BorderRadius.circular(7.0),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text(reviews),
                  Text(
                    'Metodo de pagos',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 0.5,
                    width: double.infinity,
                    color: Colors.red,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Trajetas de credito',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(children: <Widget>[
                    reviewFlag
                        ? Row(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.green,
                                  ),
                                  Text(reviews['CAT5']),
                                  Text(reviews['COUNT'].toString())
                                ],
                              )
                            ],
                          )
                        : Text('Loading pelase')
                  ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
