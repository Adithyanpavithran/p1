import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  String output = "0";
  
  void buttonpresssed(String value){
    setState(() {
      if(value=="C"){
        input = "";
        output = "0";
      }else if(value == "DEL"){
        input = input.isNotEmpty ? input.substring(0,input.length-1) : "";
      }else if(value == "="){
        try{
          output = evaluateExp(input);

        }catch(e){
          output == "ERROR";
        }
      }else{
          input = input + value ;
      }
    });

  } 

  String evaluateExp(String exp){
    try{
      return _calculate(exp).toString();
    }catch(e){
      return "ERROR";
    }

  }
  double _calculate(String expression) {
  expression = expression.replaceAll("x", "*").replaceAll("÷", "/");
  Parser p = Parser();
  Expression exp = p.parse(expression);
  ContextModel cm = ContextModel();
  return exp.evaluate(EvaluationType.REAL,cm);

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
            padding: EdgeInsets.all(28),
            backgroundColor: text == "=" ? Colors.black : Colors.white,
            foregroundColor: text == "=" ? Colors.white : Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
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
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 245, 243, 243),
                        fontSize: 25),
                  ),
                  Text(
                    output,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [Row(
              children: [
                buildButton("C"),
                buildButton("DEL"),
                buildButton("%"),
                buildButton("/"),
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
            Row(children: [
              buildButton("4"),
              buildButton("5"),
              buildButton("6"),
              buildButton("-"),
            ],),
            Row(children: [
              buildButton("1"),
              buildButton("2"),
              buildButton("3"),
              buildButton("+"),
            ],),
            Row(children: [
              buildButton("00"),
              buildButton("0"),
              buildButton("."),
              buildButton("="),
            ],)
            ],
          )
        ],
      ),
    );
  }
}
