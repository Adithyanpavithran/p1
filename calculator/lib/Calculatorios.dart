import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calios extends StatefulWidget {
  const Calios({super.key});

  @override
  State<Calios> createState() => _CaliosState();
}

class _CaliosState extends State<Calios> {
  String input = "";
  String output = "0";

  void buttonpresssed(String value) {
    setState(() {
      if (value == "AC") {
        input = "";
        output = "0";
      } else if (value == "+/-") {
        input = input.isNotEmpty ? input.substring(0, input.length - 1) : "";
      } else if (value == "=") {
        try {
          output = evaluateExp(input);
        } catch (e) {
          output == "ERROR";
        }
      } else {
        input = input + value;
      }
    });
  }

  String evaluateExp(String exp) {
    try {
      return _calculate(exp).toString();
    } catch (e) {
      return "ERROR";
    }
  }

  double _calculate(String expression) {
    expression = expression.replaceAll("x", "*").replaceAll("÷", "/");
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }

  Widget buildButton(String text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          buttonpresssed(text);
        },
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(32),
          backgroundColor: text == "AC" || text == "+/-" || text == "%"
              ? const Color.fromARGB(255, 86, 86, 86)
              : text == "/" ||
                    text == "x" ||
                    text == "-" ||
                    text == "+" ||
                    text == "="
              ? const Color.fromARGB(255, 195, 131, 12)
              : const Color.fromARGB(255, 41, 41, 41),
          foregroundColor: Colors.white,
          shape:CircleBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 7, 7),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 60, 59, 59),
                      fontSize: 55,
                    ),
                  ),
                  Text(
                    output,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 248, 247, 247),
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Row(
                children: [
                  buildButton("AC"),
                  buildButton("+/-"),
                  buildButton("%"),
                  buildButton("÷"),
                ],
              ),
              Row(
                children: [
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("x"),
                ],
              ),
              Row(
                children: [
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("-"),
                ],
              ),
              Row(
                children: [
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("+"),
                ],
              ),
              Row(
                children: [
                  buildButton("00"),
                  buildButton("0"),
                  buildButton("."),
                  buildButton("="),
                ],
              ),
            ],
            
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
