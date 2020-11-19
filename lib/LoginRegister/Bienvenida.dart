import 'package:academiainnova/Examen_uno/principal.dart';
import 'package:academiainnova/Menu_sidebar/dashboard.dart';
import '../Menu_sidebar/perfil.dart';
import 'package:academiainnova/ModuloCursos/ElegirCarrera.dart';
import 'package:academiainnova/ModuloCursos/ElegirCurso.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:academiainnova/Modulo_Universidad/ElegirUniversidad.dart';
class BienvenidaPage extends StatefulWidget {
  final User user;

  const BienvenidaPage({Key key, this.user}) : super(key: key);
  @override
  _BienvenidaPageState createState() => _BienvenidaPageState();
}

class _BienvenidaPageState extends State<BienvenidaPage> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  List<ScreenHiddenDrawer> itens = new List();

  @override
  void initState() {
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Inicio",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 20.0),
          colorLineSelected: Colors.blue,
        ),
        DashboardPage()));

    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Universidad",
          baseStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          colorLineSelected: Colors.orange,
        ),
        Universidad()));

    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Carreras",
          baseStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          colorLineSelected: Colors.cyan,
        ),
        Carrera()));

    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Cursos",
          baseStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          colorLineSelected: Colors.red,
        ),
        Curso()));

    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Practicas",
          baseStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          colorLineSelected: Colors.deepPurple,
        ),
        MyApplicativo()));

    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Mi Perfil",
          baseStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          colorLineSelected: Colors.green,
        ),
        ProfilePage()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color(0xff416d6d),
      //backgroundColorAppBar: Colors.transparent,
      screens: itens,
      //typeOpen: TypeOpen.FROM_RIGHT,
      disableAppBarDefault: true,
      //    enableScaleAnimin: true,
      //    enableCornerAnimin: true,
      //    slidePercent: 80.0,
      //    verticalScalePercent: 80.0,
      contentCornerRadius: 30.0,
      //    iconMenuAppBar: Icon(Icons.sort),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      elevationAppBar: 0.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      //    enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}
