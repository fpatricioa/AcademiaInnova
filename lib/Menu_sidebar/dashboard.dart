import '../Menu_sidebar/item_dashboard.dart';
import '../Menu_sidebar/perfil.dart';
import '../ModuloPractica/main.dart';
import '../UniversidadDB/DetailsCursos.dart';
import '../UniversidadDB/University.dart';
import 'package:flutter/material.dart';

final textoPorcentaje =
    TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo);

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/fondoonb1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'DASHBOARD DEL ESTUDIANTE',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade200),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      child: Text(
                        '28%',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            color: Color(0xFFEC407A),
                            style: BorderStyle.solid,
                            width: 13),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Avance semanal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 100,
                                  color: Colors.pink,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '15%',
                                  style: textoPorcentaje,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 170,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '50%',
                                  style: textoPorcentaje,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 150,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '35%',
                                  style: textoPorcentaje,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 80,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '10%',
                                  style: textoPorcentaje,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Wrap(
                spacing: 17,
                runSpacing: 17,
                children: <Widget>[
                  GestureDetector(
                    child: Item(
                        title: 'Home', icon: Icons.home, color: 0xff7585F6),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Item(
                        title: 'Universidades',
                        icon: Icons.account_balance,
                        color: 0xffFD6378),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListaDataBaseAcademia(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Item(
                        title: 'Cursos', icon: Icons.book, color: 0xff21CDFF),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallesCursosPage(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Item(
                        title: 'Práctica',
                        icon: Icons.content_copy,
                        color: 0xffFED525),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PracticePage(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: Item(
                        title: 'Mi Progreso',
                        icon: Icons.timeline,
                        color: 0xff00C853),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: Item(
                        title: 'Perfil',
                        icon: Icons.supervised_user_circle,
                        color: 0xffAA00FF),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
