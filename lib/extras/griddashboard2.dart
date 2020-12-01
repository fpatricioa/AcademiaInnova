import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Teoria 1",
      subtitle: "teoria clase 1",
      event: "3 Events",
      img: "assets/matematica1.png");

  Items item2 = new Items(
    title: "Teoria 2",
    subtitle: "teoria clase 3",
    event: "4 Items",
    img: "assets/teoria2.gif",
  );
  Items item3 = new Items(
    title: "Teoria 3",
    subtitle: "teoria clase 3",
    event: "",
    img: "assets/teoria3.gif",
  );
  Items item4 = new Items(
    title: "Examen de Teoria 1",
    subtitle: "10 preguntas teoria 1",
    event: "",
    img: "assets/examen1.png",
  );
  Items item5 = new Items(
    title: "Examen de Teoria 2",
    subtitle: "10 preguntas teoria 2",
    event: "4 Items",
    img: "assets/examen2.png",
  );
  Items item6 = new Items(
    title: "Examen de Teoria 3",
    subtitle: "10 preguntas teoria 3",
    event: "2 Items",
    img: "assets/teoria3.jpg",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
