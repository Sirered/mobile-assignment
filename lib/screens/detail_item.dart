import 'package:flutter/material.dart';
import 'package:mobile_inventory/models/item.dart';

class DetailPage extends StatelessWidget {
  final Item item;

  const DetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inventory',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Card(
          color: item.fields.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          margin: const EdgeInsets.all(20.0),
          child: Container(
            width: 400,
            height: 400,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.fields.name,
                  style: TextStyle(
                    color: item.fields.textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Code: ${item.fields.code}",
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                const SizedBox(height: 10),
                Text(
                  "Category: ${item.fields.category}",
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                const SizedBox(height: 10),
                Text("Price: ${item.fields.price}",
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                const SizedBox(height: 10),
                Text("Amount ${item.fields.amount}",
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                const SizedBox(height: 10),
                Text("Date Added: ${item.fields.dateAdded}",
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                const SizedBox(height: 10),
                Text("Description:",
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.bold,),
                ),
                Text(
                  item.fields.description,
                  style: TextStyle(color: item.fields.textColor, fontSize: 15, fontWeight: FontWeight.normal,),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, 
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Adjust the padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ]
            ),
          )
        )
      )
    );
  }
}