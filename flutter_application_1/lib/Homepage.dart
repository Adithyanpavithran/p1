import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back.jpeg"),
            fit: BoxFit.cover, // Makes the image cover the entire screen
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NIKE",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 242, 242),
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "Your only limit is you!",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              SizedBox(height: 700),
              //  ElevatedButton(onPressed: () {}, child: Text("Start")),
            ],
          ),
        ),
      ),
    );
  }
}
