import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController numOne = TextEditingController();
  TextEditingController numTwo = TextEditingController();

  var num1, num2, sum = 0;

  void _clearInput(){
    setState(() {
      num1 = numOne;
      num2 = numTwo;

      num1 = "";
      num2 = "";
      sum = 0;
    });
  }

  void _addNum(){
    
    setState(() {
      num1 = int.parse(numOne.text);
      num2 = int.parse(numTwo.text);
      sum = num1 + num2;
      print(sum);
    });
    
  }

  void _subNum(){
    
    setState(() {
      num1 = int.parse(numOne.text);
      num2 = int.parse(numTwo.text);
      sum = num1 - num2;
      print(sum);
    });

  }
  void _mulNum(){
    
    setState(() {
      num1 = int.parse(numOne.text);
      num2 = int.parse(numTwo.text);
      sum = num1 * num2;
      print(sum);
    });

  }
  void _divNum(){
    
    setState(() {
      num1 = int.parse(numOne.text);
      num2 = int.parse(numTwo.text);
      sum = num1 ~/ num2;
      print(sum);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$sum",
                style: TextStyle(
                  fontFamily: 'serif', 
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                  ),
              ),
              TextField(
                controller: numOne,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Enter a Number"),
              ),
              TextField(
                controller: numTwo,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Enter a Number"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _addNum();
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RaisedButton(
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _subNum();
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "*",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _mulNum();
                    },
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RaisedButton(
                    child: Text(
                      "/",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _divNum();
                    },
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Clear",
                        style: TextStyle(color: Colors.white, fontFamily: 'serif', fontSize: 30.0),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        _clearInput();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
