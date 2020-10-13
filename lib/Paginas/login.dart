import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _remenberMe = false;

  _cargarEmailTF() {
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 20.0, //espacio
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardAppearance: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: 'Ingresa tu Email',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cargarContrasenaTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Contraseña',
          style: kLabelStyle,
        ),
        SizedBox(
          height: 20.0, //espacio
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            keyboardAppearance: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Ingresa tu Contraseña',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cargarOlvidoContrasenaBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot password button pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _cargarRemenberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _remenberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _remenberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remenber Me',
            style: kLabelStyle,
          )
        ],
      ),
    );
  }

  Widget _cargarLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login button presed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Color(0xFF527DAA),
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF7B43),
                  Color(0xFFF5326F),
                ],
                //stops: [0.1, 0.4]
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'INICIAR SESIÓN',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.0, //espacio
                  ),
                  _cargarEmailTF(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _cargarContrasenaTF(),
                  _cargarOlvidoContrasenaBtn(),
                  _cargarRemenberMeCheckbox(),
                  _cargarLoginBtn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
