import 'dart:convert';
import 'dart:core';
// import 'dart:html';

import 'package:flutter/cupertino.dart';
class UserFields{
  static final String id = 'id';
  static final String name = 'juice name';
  static final String fruit = 'fruit';
  static final String suger_qt = 'suger qt.';
  static final String milk = 'milk';
  static final String flavour = 'flavour ice cream';
  static final String flavour_qt = 'quanty ice cream';
  static final String iced_water = 'iced water';
  static final String chocolate_syrup = 'chocolate syrup';
  static final String total = 'total';
  static List<String> getFiels() => [id,name,fruit,suger_qt,milk,flavour,flavour_qt,iced_water,chocolate_syrup,total];
}

class User{
   final int? id;
   final String name;
   final String fruit;
   final String suger_qt;
   final String milk;
   final String flavour;
   final String flavour_qt;
   final String iced_water;
   final String chocolate_syrup;
   final String total;

  const User({
    this.id,
    required this.name,
    required this.fruit,
    required this.suger_qt,
    required this.milk,
    required this.flavour,
    required this.flavour_qt,
    required this.iced_water,
    required this.chocolate_syrup,
    required this.total,
});
  User copy({
  int? id,
    String? name,
    String? fruit,
    String? suger_qt,
    String? milk,
    String? flavour,
    String? flavour_qt,
    String? iced_water,
    String? chocolate_syrup,
    String? total,
    // String? fruit,/
})=> User(id: id?? this.id,
    name: name ?? this.name,
    fruit: fruit ?? this.fruit,
    suger_qt: suger_qt ?? this.suger_qt,
    milk: milk ?? this.milk,
    flavour: flavour ?? this.flavour,
    flavour_qt: flavour_qt ?? this.flavour_qt,
    iced_water: iced_water ?? this.iced_water,
    chocolate_syrup: chocolate_syrup ?? this.chocolate_syrup,
      total: total ?? this.total
  );

  static User fromJson(Map<String ,dynamic> json)=>User(
      id: jsonDecode(json[UserFields.id]),
      name: (json[UserFields.name]),
      fruit: (json[UserFields.fruit]),
      suger_qt: json[UserFields.suger_qt] ,
      milk: json[UserFields.milk],
      flavour: json[UserFields.flavour],
      flavour_qt: json[UserFields.flavour_qt],
      iced_water: json[UserFields.iced_water],
      chocolate_syrup: json[UserFields.chocolate_syrup],
      total: json[UserFields.total]
  );
   Map<String,dynamic> toJson() =>{
     UserFields.id:id,
     UserFields.name:name,
     UserFields.fruit:fruit,
     UserFields.suger_qt:suger_qt,
     UserFields.milk:milk,
     UserFields.flavour:flavour,
     UserFields.flavour_qt:flavour_qt,
     UserFields.iced_water : iced_water,
     UserFields.chocolate_syrup : chocolate_syrup,
     UserFields.total : total
   };
}

