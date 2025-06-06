import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 189, 88, 239),
        foregroundColor: Colors.white,
        title: Text("Your Profile"),
        actions: [Icon(Icons.settings)],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {},
      //child: Icon(Icons.domain_verification),),
      backgroundColor: const Color.fromARGB(255, 189, 88, 239),
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Container(
          width: double.infinity,

          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.purpleAccent,
                radius: 80,
                backgroundImage: AssetImage("assets/avatar.png"),
              ),
              SizedBox(height: 30),
              Text(
                "Adithyan p",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Your Email"),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      prefix: Icon(Icons.email),
                      labelText: "Email ID",
                      //hintText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 265),
                    child: Row(children: [Text("Phone Number")]),
                  ),
                  SizedBox(height: 3),
                  TextField(
                    decoration: InputDecoration(
                      prefix: Icon(Icons.phone),
                      labelText: "Phone Number",
                      //hintText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Website"),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      prefix: Icon(Icons.web),
                      labelText: "Website",
                      //hintText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text("Password"),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      prefix: Icon(Icons.lock),
                      labelText: "Password",
                      //hintText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
