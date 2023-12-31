// To parse this JSON data, do
//
//     final item = itemFromJson(jsonString);

import 'dart:convert';
import 'package:flutter/material.dart';

List<Item> itemFromJson(String str) => List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
    String model;
    int pk;
    Fields fields;

    Item({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    String category;
    String code;
    int amount;
    int price;
    String description;
    DateTime dateAdded;
    String color;
    Color cardColor = Colors.white;
    Color textColor = Colors.black;

    Fields({
        required this.user,
        required this.name,
        required this.category,
        required this.code,
        required this.amount,
        required this.price,
        required this.description,
        required this.dateAdded,
        required this.color,
    }) {
      if (color == "Black") {cardColor = Colors.grey;
      } else if (color == "Blue") {cardColor = Colors.lightBlueAccent;
      } else if (color == "Red") {cardColor = Colors.pink; textColor = Colors.white;
      } else if (color == "Purple") {cardColor = Colors.purple; textColor = Colors.white;
      } else if (color == "Yellow") {cardColor = Colors.yellow;
      } else if (color == "Green") {cardColor = Colors.lightGreen;
      } else {cardColor = Colors.white;}
    }

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        category: json["category"],
        code: json["code"],
        amount: json["amount"],
        price: json["price"],
        description: json["description"],
        dateAdded: DateTime.parse(json["date_added"]),
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "category": category,
        "code": code,
        "amount": amount,
        "price": price,
        "description": description,
        "date_added": "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
        "color": color,
    };
}
