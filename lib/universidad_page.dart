import 'package:academiainnova/LoginRegister/inicioLogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UniversidadPage extends StatefulWidget {
  final User user;

  const UniversidadPage({Key key, this.user}) : super(key: key);
  @override
  _UniversidadPageState createState() => _UniversidadPageState();
}

class _UniversidadPageState extends State<UniversidadPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                widget.user.displayName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              child: OutlineButton(
                child: Text("Cerrar Sesión"),
                onPressed: () {
                  _signOut().whenComplete(() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => InicioLogin()));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _signOut() async {
    await _auth.signOut();
  }
}
