<<<<<<< HEAD
import 'package:academiainnova/LoginRegister/inicioLogin.dart';
import 'package:academiainnova/LoginRegister/login.dart';
import 'package:academiainnova/LoginRegister/register.dart';
=======
import 'package:academiainnova/Menu_sidebar/dashboard.dart';
import 'package:academiainnova/Menu_sidebar/drawerScreen.dart';

import 'LoginRegister/inicioLogin.dart';
import 'LoginRegister/login.dart';
import 'LoginRegister/register.dart';
>>>>>>> 7ab9ab32f99c90127d8d91026af4abdd794ab60b
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  //buildAppRoutes() es para direccionar las paginas
  return {
    '/login': (BuildContext context) => new LoginPage(),
    '/register': (BuildContext context) => new RegisterPage(),
    '/inicioLogin': (BuildContext context) => new InicioLogin(),
    '/dashboard': (BuildContext context) => new DashboardPage(),
    '/drawerpage': (BuildContext context) => new DrawerScreen(),
  };
}
