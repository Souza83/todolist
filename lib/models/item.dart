class Item {
  String ? title;
  bool ? done;

  Item({this.title, this.done});

  // Pesquisar Json to Dart para gerar o código
  Item.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title; // Se der erro, colocar this.title
    data['done'] = done;
    return data;
  }

}