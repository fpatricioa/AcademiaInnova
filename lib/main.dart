import 'LoginRegister/inicioLogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'slider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

@override
// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Widget rootPage = InicioApp();
  //Widget rootPage = MyApplica();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //esto es para ocultar la cinta de debug
      title: 'ACADEMIA',
      home: rootPage, //esta clase lo creamos bajo
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
      image: "",
      title: "",
      descripcion: "",
      color: Colors.green,
    ),
    SliderPage(
      image: "assets/image/estudiaritmo.png",
      title: "Estudia a tu ritmo",
      descripcion:
          "Estudia en cualquier momento y de donde estes, estudia a tu ritmo",
      color: Colors.green,
    ),
    SliderPage(
      image: "assets/image/practicas.png",
      title: 'Ejercicios constantes',
      descripcion:
          'Resuelve ejercicios y mejora tu tecnica para resolver examenes en tiempo record',
      color: Colors.blue,
    ),
    SliderPage(
      image: "assets/image/progreso.png",
      title: 'Mira tu progreso',
      descripcion:
          'Mira tu progreso en transcurso de tu avance, analiza cada detalle para seguir mejorando',
      color: Colors.orange,
    ),
  ]; //siempre despues de corchete cerrar con punto y coma ojo pero en <widget> solo cierra con coma

  _onChanged(int index) {
    setState(() {
      _currentPage =
          index; //aqui vemos el estado para pasar de una pantalla a otro
    });
  }

  Widget _imagen() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/fondoonb1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/Login.png',
            //width: 200,
            width: 250,
            //color: Colors.orange,
          ),
          Text(
            'ACADEMIA',
            style: TextStyle(
                fontSize: 55, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'INNOVA',
            style: TextStyle(
                fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
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
              if (_currentPage == 0) {
                return _imagen();
              } else {
                return _pages[index];
              }
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
                    width: (index == _currentPage) ? 50 : 10,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? Color(0xfff50057)
                            : Color(0xfff50057).withOpacity(0.5)),
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
                    color: Color(0xfff50057),
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
                                'Comenzar',
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
