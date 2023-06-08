// To parse this JSON data, do
//
//     final preventivo = preventivoFromJson(jsonString);

import 'dart:convert';

Map<String, Preventivo> preventivoFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, Preventivo>(k, Preventivo.fromJson(v)));

String preventivoToJson(Map<String, Preventivo> data) => json.encode(Map.from(data).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())));

class Preventivo {
    String nombre;
    int precio;

    Preventivo({
        required this.nombre,
        required this.precio,
    });

    factory Preventivo.fromJson(Map<String, dynamic> json) => Preventivo(
        nombre: json["nombre"],
        precio: json["precio"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "precio": precio,
    };
}
