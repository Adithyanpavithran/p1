import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  TextEditingController Emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    const Color.fromARGB(255, 234, 236, 239),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              width: 450,
              //color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 16, 15, 15),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Enter your email account to reset password"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: const Color.fromARGB(255, 246, 242, 242),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    TextField(
                      controller: Emailcontroller,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email),
                        hintText: "Enter email",
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
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        forget(email: Emailcontroller.text, context: context);
                      },
                      child: Text('Send Confirmation'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
