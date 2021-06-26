import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  //Construtor da classe.
  UserModel({
    required this.name,
    this.photoURL,
  });

  //Transforma o OBJETO em MAP.
  Map<String, dynamic> toMap() => {
        'name': name,
        'photoURL': photoURL,
      };

  //Transforma o MAP em JSON.
  String toJson() => jsonEncode(toMap());

  //Transforma o JSON em MAP novemante para poder ser acessado.
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  //Decodifica a JSON em STRING.
  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));
}
