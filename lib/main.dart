// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final player = new AudioCache();

  // Widget calcbutton(String btntxt, Color btncolor, Color txtcolor){
  //   return MaterialButton(
  //     onPressed: () {
  //
  //     },
  //     color: btncolor,
  //     shape: const CircleBorder(),
  //     child: const Padding(
  //       padding: EdgeInsets.all(35),
  //     ),
  //     child: Text(btntxt,
  //       style: TextStyle(
  //         fontSize: 24,
  //         color: txtcolor,
  //       ),
  //     ),
  //   );
  // }

  Widget calcbutton(
      String btntxt, Color btncolor, Color txtcolor, String soundNumber) {
    final player = new AudioCache();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: btncolor, shape: const CircleBorder()),
      child: Container(
        width: 73,
        height: 73,
        alignment: Alignment.center,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Text(
          btntxt,
          style: TextStyle(fontSize: 36, color: txtcolor),
        ),
      ),
      onPressed: () {
        player.play("click$soundNumber.mp3");
        calculation(btntxt);
      },
    );
  }

  @override
  // ignore: todo
  // TODO: implement widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: const Text(
      //     'Calculator',
      //     style: TextStyle(fontSize: 50),
      //   ),
      //   backgroundColor: Colors.black,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Calculator Display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      text,
                      textAlign: TextAlign.left,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 125),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //here Button functions will called
                calcbutton('AC', Color.fromARGB(255, 216, 216, 216),
                    Colors.black, "4"),
                calcbutton('+/-', Color.fromARGB(255, 216, 216, 216),
                    Colors.black, "3"),
                calcbutton(
                    '%', Color.fromARGB(255, 216, 216, 216), Colors.black, "3"),
                calcbutton('÷', Colors.amber[700]!, Colors.white, "3"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //copy above row directly

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //here Button functions will called
                calcbutton(
                    '7', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton(
                    '8', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton(
                    '9', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton('x', Colors.amber[700]!, Colors.white, "3"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //here Button functions will called
                calcbutton(
                    '4', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton(
                    '5', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton(
                    '6', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton('-', Colors.amber[700]!, Colors.white, "3"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //here Button functions will called
                calcbutton(
                    '1', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton(
                    '2', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton(
                    '3', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton('+', Colors.amber[700]!, Colors.white, "3"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //now last row

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[

            //     calcbutton('0', Color.fromARGB(255, 55, 55, 55), Colors.white),
            //     calcbutton('00', Color.fromARGB(255, 55, 55, 55), Colors.white),
            //     calcbutton('.', Color.fromARGB(255, 55, 55, 55), Colors.white),
            //     calcbutton('=', Colors.amber[700]!, Colors.white),
            //   ],
            // ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 2)),
                //here Button functions will called
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 55, 55, 55),
                        shape: StadiumBorder()),
                    onPressed: () {
                      player.play("click2.mp3");
                      calculation("0");
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(42, 20, 100, 10),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 36,
                        color: Colors.white,
                      
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )),

                Padding(padding: EdgeInsets.only(left: 6)),

                calcbutton(
                    '.', Color.fromARGB(255, 55, 55, 55), Colors.white, "2"),
                calcbutton('=', Colors.amber[700]!, Colors.white, "3"),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //   ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //   shape: const CircleBorder(), backgroundColor: btncolor),
            //     child: Container(
            //     width: 73,
            //     height: 73,
            //     alignment: Alignment.center, decoration: const BoxDecoration(shape: BoxShape.circle),
            //       child: Text(
            //       btntxt,
            //       style: TextStyle(fontSize: 36, color: txtcolor ),
            //       ),
            //     ),
            //   onPressed: () {},
            // );
            //     ],
            //   )
          ],
        ),
      ),
    );
  }

  //Calculator logic
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {
    if (btnText == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '÷') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '÷' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '÷') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-$result';
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0)) {
        return result = splitDecimal[0].toString();
      }
    }
    return result;
  }
}
