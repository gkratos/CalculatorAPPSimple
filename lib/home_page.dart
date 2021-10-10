import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0;
  var sum = 0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).toInt();
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output:$sum",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter No.",
                ),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter No.",
                ),
                controller: t2,
              ),
              new Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    onPressed: doAddition,
                    color: Colors.lightGreenAccent,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    onPressed: doSubtraction,
                    color: Colors.lightGreenAccent,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("*"),
                    onPressed: doMultiplication,
                    color: Colors.lightGreenAccent,
                  ),
                  new RaisedButton(
                    child: new Text("/"),
                    onPressed: doDivision,
                    color: Colors.lightGreenAccent,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("Clear"),
                    onPressed: doClear,
                    color: Colors.lightGreenAccent,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
