import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Watsapp extends StatelessWidget {
  const Watsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
        foregroundColor: Colors.white,
        title: Text("Whatsapp", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [Icon(Icons.settings)],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        child: Icon(Icons.message),
      ),
    );
  }
}
