// To parse this JSON data, do
//
//     final especialidade = especialidadeFromJson(jsonString);

import 'dart:convert';

Especialidade especialidadeFromJson(String str) => Especialidade.fromJson(json.decode(str));

String especialidadeToJson(Especialidade data) => json.encode(data.toJson());

class Especialidade {
  Especialidade({
    this.codigo,
    this.especialidade,
  });

  int codigo;
  String especialidade;

  factory Especialidade.fromJson(Map<String, dynamic> json) => Especialidade(
    codigo: json["codigo"],
    especialidade: json["especialidade"],
  );

  Map<String, dynamic> toJson() => {
    "codigo": codigo,
    "especialidade": especialidade,
  };
}
