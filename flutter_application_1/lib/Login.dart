import 'package:flutter/material.dart';
import 'package:flutter_application_1/Loginpage.dart';
import 'package:flutter_application_1/Signuppage.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset("assets/welcome.json", width: 250, height: 250),
          ),
          SizedBox(height: 30),

          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/Nike.png"),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginpage()),
              );
            },
            child: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 86, 85, 85),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minimumSize: Size(100, 40),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signuppage()),
              );
            },
            child: Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 86, 85, 85),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minimumSize: Size(100, 40),
            ),
          ),
        ],
      ),
    );
  }
}
