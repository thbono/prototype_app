import 'package:flutter/material.dart';

class Associated {
  @required
  final int id;
  @required
  final String name;
  @required
  final String cpf;
  @required
  final String birthdate;
  @required
  final String amount;
  @required
  final String documentImage;
  @required
  final String status;

  Associated({this.id, this.name, this.cpf, this.birthdate, this.amount, this.documentImage, this.status});

  Associated.fromDb(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        cpf = map['cpf'],
        birthdate = map['birthdate'],
        amount = map['amount'],
        documentImage = map['document_image'],
        status = map['status'];

  Map<String, dynamic> toMapForDb() {
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['name'] = name;
    map['cpf'] = cpf;
    map['birthdate'] = birthdate;
    map['amount'] = amount;
    map['document_image'] = documentImage;
    map['status'] = status;
    return map;
  }
}