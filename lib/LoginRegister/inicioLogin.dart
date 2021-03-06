import 'login.dart';
import 'register.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InicioLogin extends StatefulWidget {
  @override
  _InicioLoginState createState() => _InicioLoginState();
}

class _InicioLoginState extends State<InicioLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF4563DB),
                Color(0xFF5B16D0),
                Color(0xFFF5326F),
                Color(0xFFFF7B43),
                //Color(0xFF3594DD),
                //Color(0xFF5036D5),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 40.0),
          child: Column(
            children: [
              Icon(
                FontAwesomeIcons.graduationCap,
                color: Colors.red,
                size: 70.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ACADEMIA',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      ' INNOVA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ]),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Un lugar donde encontraras lo necesario',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.blue,
                      size: 25.0,
                    ),
                    Text(
                      ' | Regístrate con facebook',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ), //esta linea de codigo es hacer espacio entre widget o botones
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.google,
                      color: Colors.blue,
                      size: 25.0,
                    ),
                    Text(
                      ' | Regístrate con Google',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: FlatButton(
                  onPressed: () {
                    _pushPage(context, LoginPage());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:
                    20.0, //esta linea de codigo es hacer espacio entre widget o botones
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '¿No tienes una cuenta? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    OutlineButton(
                      onPressed: () {
                        _pushPage(context, RegisterPage());
                      },
                      child: Text(
                        'Registrate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _pushPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => page),
  );
}
