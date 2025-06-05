import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  String output = "0";
  void Buttonpressed(String value) {}
  Widget Buildbutton(String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: text == "=" ? Colors.black : Colors.white,
          foregroundColor: text == "=" ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Input",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 253, 251, 251),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Output",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Buildbutton("C"),
                  Buildbutton("%"),
                  Buildbutton("DEL"),
                  Buildbutton("/"),
                ],
              ),
              Row(
                children: [
                  Buildbutton("7"),
                  Buildbutton("8"),
                  Buildbutton("9"),
                  Buildbutton("*"),
                ],
              ),
              Row(
                children: [
                  Buildbutton("4"),
                  Buildbutton("5"),
                  Buildbutton("6"),
                  Buildbutton("-"),
                ],
              ),
              Row(
                children: [
                  Buildbutton("1"),
                  Buildbutton("2"),
                  Buildbutton("3"),
                  Buildbutton("+"),
                ],
              ),
              Row(
                children: [
                  Buildbutton("00"),
                  Buildbutton("0"),
                  Buildbutton("."),
                  Buildbutton("="),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
