import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listview Tipo 1', 
          style: TextStyle(fontSize: 25))
        ),
      ),
      body: ListView(
        children: <Widget> [
          ...options.map((game) {
            return ListTile(
              leading: const Icon(
                Icons.emergency,
                size: 20,
              ),
              title: Text(
                game, 
                style: const TextStyle(fontSize: 20)
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 20,
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
