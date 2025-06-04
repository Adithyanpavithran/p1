import 'package:flutter/material.dart';
import 'package:flutter_application_1/Services.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  // TextEditingController Cpasswordcontroller = TextEditingController();
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 16, 15, 15),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Sign up to comtine"),
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
                      controller: Namecontroller,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                      decoration: InputDecoration(
                        prefix: Icon(Icons.person),
                        hintText: "Name",
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
                    SizedBox(height: 10),
                    TextField(
                      controller: Emailcontroller,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                      decoration: InputDecoration(
                        prefix: Icon(Icons.email),
                        hintText: "Email",
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
                    SizedBox(height: 10),
                    TextField(
                      controller: Passwordcontroller,
                      obscureText: true,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                      decoration: InputDecoration(
                        prefix: Icon(Icons.password),
                        hintText: "Password",
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
                        Register(
                          Username: Namecontroller.text,
                          Email: Emailcontroller.text,
                          password: Passwordcontroller.text,
                          context: context,
                        );
                      },
                      child: Text('Sign up'),
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
