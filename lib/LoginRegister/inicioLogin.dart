import 'package:academiainnova/LoginRegister/login.dart';
import 'package:academiainnova/LoginRegister/register.dart';
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
            /*gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4563DB),
              Color(0xFF5B16D0),
              Color(0xFFF5326F),
              Color(0xFFFF7B43),
            ]),*/
            image: DecorationImage(
          image: AssetImage('assets/image/backgroundUI.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 28.0, right: 28, top: 80.0, bottom: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/Login.png',
                width: 150,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ACADEMIA',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    Text(
                      ' INNOVA',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                  ]),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Un lugar donde enseñar es nuestra especialidad',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff3949AB),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    Text(
                      ' | Regístrate con facebook',
                      style: TextStyle(
                        color: Colors.white,
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
                  color: Color(0Xff536DFE),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    Text(
                      ' | Regístrate con Google',
                      style: TextStyle(
                        color: Colors.white,
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
                ),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    _pushPage(context, LoginPage());
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.white,
                  child: Text(
                    'Iniciar sesion',
                    style: TextStyle(
                        color: Color(0xFF527DAA),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No tienes una cuenta? ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        _pushPage(context,
                            RegisterPage()); //cambiar antes del push RegisterPage
                      },
                      child: Text(
                        'Registrate',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
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
