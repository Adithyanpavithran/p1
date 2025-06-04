import 'package:flutter/material.dart';
import 'package:flutter_application_1/Forget.dart';
import 'package:flutter_application_1/Signuppage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(height: 30),
          Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 150),
          TextField(
            style: TextStyle(color: const Color.fromARGB(255, 6, 6, 6)),
            decoration: InputDecoration(
              prefix: Icon(Icons.email),
              hintText: "Enter e-mail id",
              hintStyle: TextStyle(
                color: const Color.fromARGB(255, 15, 15, 15),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 71, 45, 244),
                  width: 5,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            obscureText: true,
            style: TextStyle(color: const Color.fromARGB(255, 8, 8, 8)),
            decoration: InputDecoration(
              prefix: Icon(Icons.visibility_off),
              hintText: "Enter Password",

              hintStyle: TextStyle(
                color: const Color.fromARGB(255, 13, 13, 13),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: const Color.fromARGB(255, 37, 57, 242),
                  width: 5,
                ),
              ),
            ),
          ),

          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Forget()),
              );
            },
            child: Text("Forget Password ?"),
          ),
          ElevatedButton(
            onPressed: () {},
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
          SizedBox(height: 150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account ?",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signuppage()),
                  );
                },
                child: Text("Signup"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
