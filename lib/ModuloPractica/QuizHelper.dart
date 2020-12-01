class QuizHelper {
  List<Items> items;

  QuizHelper({this.items});

  QuizHelper.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String cursos;
  String tipo;
  String dificultad;
  String preguntas;
  String correcto;
  List<String> incorrecto;

  Items(
      {this.cursos,
      this.tipo,
      this.dificultad,
      this.preguntas,
      this.correcto,
      this.incorrecto});

  Items.fromJson(Map<String, dynamic> json) {
    cursos = json['cursos'];
    tipo = json['tipo'];
    dificultad = json['dificultad'];
    preguntas = json['preguntas'];
    correcto = json['correcto'];
    incorrecto = json['incorrecto'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cursos'] = this.cursos;
    data['tipo'] = this.tipo;
    data['dificultad'] = this.dificultad;
    data['preguntas'] = this.preguntas;
    data['correcto'] = this.correcto;
    data['incorrecto'] = this.incorrecto;
    return data;
  }
}
