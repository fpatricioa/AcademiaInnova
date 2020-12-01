import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'DetailsCursos.dart';

class DetalleUniveridadPage extends StatefulWidget {
  @override
  _DetalleUniveridadPageState createState() => _DetalleUniveridadPageState();
}

class _DetalleUniveridadPageState extends State<DetalleUniveridadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Elige una carrera'),
        ),
        backgroundColor: Colors.blue,
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("ACADEMIA")
              .doc('UNI1')
              .collection('UNIVERSIDAD')
              .snapshots(),
          builder: (_, snapshot) {
            if (!snapshot.hasData) return Center(child: Text('Loading...'));
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data.documents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (_, index) {
                  DocumentSnapshot data = snapshot.data.documents[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                          color: Colors.cyan,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data['NAME'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.pink),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                data['CURSOS'].toString() + ' Cursos',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetallesCursosPage(),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
