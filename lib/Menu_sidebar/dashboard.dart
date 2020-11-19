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
      backgroundColor: Color(0xff00BCD4),
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
                  color: Colors.grey.shade200),
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
                      color: Colors.grey.shade100,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                        color: Color(0xFFEC407A),
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
                Item(title: 'Home', icon: Icons.home, color: 0xff7585F6 ),
                Item(title: 'Universidades', icon: Icons.account_balance, color: 0xffFD6378),
                Item(title: 'Cursos', icon: Icons.book, color: 0xff21CDFF),
                Item(title: 'Examenes', icon: Icons.content_copy, color: 0xffFED525),
                Item(title: 'Mi Progreso',icon: Icons.timeline, color: 0xff00C853),
                Item(title: 'Perfil',icon: Icons.supervised_user_circle,color: 0xffAA00FF),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
