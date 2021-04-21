class Pokemon {
  int id;
  String nome;
  String imageUrl;
  String type;

  Pokemon.fromJson(Map<String, dynamic> json){
    id = json["id"];
    nome = json["name"];
    imageUrl = json["sprites"]["other"]["official-artwork"]["front_default"];
    type = json["types"][0]["type"]["name"];
  }
}