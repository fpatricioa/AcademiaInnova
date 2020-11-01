import 'package:academiainnova/Menu_sidebar/item_dashboard.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'DASHBOARD DEL ESTUDIANTE',
              style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7585F6)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  child: Text(
                    '28%',
                    style: TextStyle(
                      color: Colors.blueAccent[200],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                        color: Color(0xFF7E89FC),
                        style: BorderStyle.solid,
                        width: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 17,
              children: <Widget>[
                Item(title: 'Test', icon: Icons.home, color: 0xffFED525),
                Item(title: 'coleccion', icon: Icons.star, color: 0xffFD6378),
                Item(
                    title: 'Precio',
                    icon: Icons.monetization_on,
                    color: 0xff21CDFF),
                Item(
                    title: 'ventas', icon: Icons.show_chart, color: 0xff7585F6),
                Item(
                    title: 'cursos',
                    icon: Icons.monetization_on_rounded,
                    color: 0xffFED525),
                Item(
                    title: 'Examenes',
                    icon: Icons.show_chart_sharp,
                    color: 0xffFD6378),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
