import 'package:academiainnova/Paginas/inicioLogin.dart';
import 'package:academiainnova/Paginas/login.dart';
import 'package:academiainnova/Paginas/register.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  //buildAppRoutes() es para direccionar las rutas
  return {
    '/login': (BuildContext context) => new LoginPage(),
    '/register': (BuildContext context) => new RegisterPage(),
    '/inicioLogin': (BuildContext context) => new InicioLogin(),
    //importamos los paquetes de mainTabs.dart
    //'/mainTabs': (BuildContext context) => new MainTabsPage();
  };
}
