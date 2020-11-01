<<<<<<< HEAD
import 'package:academiainnova/LoginRegister/inicioLogin.dart';
=======
import 'package:academiainnova/LoginRegister/login.dart';
import 'package:academiainnova/Menu_sidebar/perfil.dart';
import 'package:academiainnova/ModuloCursos/ElegirCurso.dart';
import 'package:academiainnova/ModuloCursos/Matem%C3%A1tica.dart';

import 'LoginRegister/inicioLogin.dart';
>>>>>>> 7ab9ab32f99c90127d8d91026af4abdd794ab60b
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'slider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget rootPage =  Curso(); //cambiar a InicioApp antes de push 
  //Widget rootPage = PerfilPage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //esto es para ocultar la cinta de debug
      title: 'ACADEMIA',
      home: rootPage, //esta clase lo creamos bajo
      routes: buildAppRoutes(),
    );
  }
}

class InicioApp extends StatefulWidget {
  @override
  _InicioAppState createState() => _InicioAppState();
}

class _InicioAppState extends State<InicioApp> {
  //declaramos las variables y inicalizamos
  // ignore: unused_field
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
      //este SliderPage viene de slider.dart ahi esta declarado
      title: "SOLO EL LOGO",
      descripcion: "",
      image: "assets/image/cat.png",
    ),
    SliderPage(
      //este SliderPage viene de slider.dart ahi esta declarado
      title: "Academia Innova",
      descripcion: "El mundo es la plataforma mas llamativa y apreciada",
      image: "assets/image/laptop.png",
    ),
    SliderPage(
      title: 'Academia innova',
      descripcion:
          'Es una plataforma tecnologica para el nivel secundaria y preparatoria',
      image: 'assets/image/ofina-trabajo.png',
    ),
    SliderPage(
      title: 'Poner titulo aqui',
      descripcion:
          'Contamos con un excelente plana de docentes, y las mejores herramientas para el aprendizaje',
      image: 'assets/image/equipo-remoto.png',
    ),
  ]; //siempre despues de corchete cerrar con punto y coma ojo pero en <widget> solo cierra con coma

  _onChanged(int index) {
    setState(() {
      _currentPage =
          index; //aqui vemos el estado para pasar de una pantalla a otro
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          //Creamos botoncitos de nav dentro de hijo widget
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _currentPage) ? 30 : 10,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? Colors.blue
                            : Colors.blue.withOpacity(0.5)),
                  );
                }),
              ),
              //creamos el circulo con el next cuando se da click
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 60,
                  alignment: Alignment.center,
                  width: (_currentPage == (_pages.length - 1))
                      ? 200
                      : 60, //con este -1 decimos que se haga el efecto de empezar en el ultimo activity
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(35),
                  ),

                  child: (_currentPage == (_pages.length - 1))
                      ? Container(
                          width: size.width * 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(23),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InicioLogin(),
                                  ),
                                );
                              },
                              child: Text(
                                'Empezar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                            ),
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 50,
                        ),
                ),
              ),

              //con este le subimos el boton - (botom-border)
              SizedBox(height: 50),

              //creamos el boton empezar
            ],
          ),
        ],
      ),
    );
  }
}