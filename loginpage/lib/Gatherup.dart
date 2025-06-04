import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Gatherup extends StatelessWidget {
  const Gatherup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 118, 63),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Center(child: Lottie.asset("assets/logo3.json")),
          SizedBox(height: 10),
          Text(
            "MEDICURE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
