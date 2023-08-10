import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('I am poor'),
      ),
      body: const Center(
          child: Image(
              image: NetworkImage(
                  'https://baccabucci.com/cdn/shop/products/MG_8301_800x.jpg?v=1595664122'))),
    ),
  ));
}
