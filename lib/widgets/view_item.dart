import 'package:flutter/material.dart';

class CardItem {
  static List<CardItem> items = [];
  final String name;
  final String code;
  final String category;
  final int amount;
  final int price;
  final String description;

  CardItem({
    required this.name, 
    required this.code, 
    required this.category, 
    required this.amount, 
    required this.price, 
    required this.description
  });

  @override
  String toString() {
    return 'Name: $name \ncode: $code \nCategory: $category \nAmount: $amount \nPrice: $price \nDescription:';
  }
}

class ItemCard extends StatelessWidget {
  final CardItem item;

  const ItemCard(this.item, {Key? key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        color: Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                '$item',
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,),
              ),
              Text(
                item.description,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.normal,),
              )
            ],
          )
        )
      )
    );
  }
}