// To parse this JSON data, do
//
//     final citiesModel = citiesModelFromJson(jsonString);

import 'dart:convert';

DoctorModel citiesModelFromJson(String str) =>
    DoctorModel.fromJson(json.decode(str));

String citiesModelToJson(DoctorModel data) => json.encode(data.toJson());

class DoctorModel {
  String name;
  String surname;
  String speciality;
  List<String> data;

  DoctorModel({
    required this.name,
    required this.surname,
    required this.speciality,
    required this.data,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        name: json["name"],
        surname: json["surname"],
        speciality: json["speciality"],
        data: List<String>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "surname": surname,
        "speciality": speciality,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
      
}

