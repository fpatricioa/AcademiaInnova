import 'package:academiainnova/videos/main_video.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetallesCursosPage extends StatefulWidget {
  @override
  _DetallesCursosPageState createState() => _DetallesCursosPageState();
}

class _DetallesCursosPageState extends State<DetallesCursosPage> {
  bool cargarData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('ACADEMIA')
            .doc('UNI1')
            .collection('UNIVERSIDAD')
            .doc('CARRERA1')
            .collection('CURSOS')
            .snapshots(),
        builder: (_, snapshot) {
          if (!snapshot.hasData) return Text('Cargando...');
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (_, index) {
              DocumentSnapshot university = snapshot.data.documents[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                child: GestureDetector(
                  child: Card(
                    color: Colors.blue,
                    child: ListTile(
                      leading: Icon(
                        Icons.supervised_user_circle,
                        size: 50,
                        color: Colors.red,
                      ),
                      title: Text(
                        university['NAME'],
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      subtitle: Text(
                        university['TEMAS'].toString() + ' Temas',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            backgroundColor: Colors.pink),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPrincipal(),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
