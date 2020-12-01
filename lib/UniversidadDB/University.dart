import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'DetailsUniversity.dart';

class ListaDataBaseAcademia extends StatefulWidget {
  @override
  _ListaDataBaseAcademiaState createState() => _ListaDataBaseAcademiaState();
}

class _ListaDataBaseAcademiaState extends State<ListaDataBaseAcademia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Elige una Universidad'),
        ),
        backgroundColor: Colors.pink,
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("ACADEMIA").snapshots(),
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
                          color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                data['Imagen'],
                                width: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                data['NAME'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.pink),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                data['CARRERAS'].toString() + ' CARRERAS',
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
                              builder: (context) => DetalleUniveridadPage(),
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

Widget _header() {
  return new Container(
    height: 140,
  );
}
