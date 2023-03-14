import 'dart:math';

import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = false;
  int weight = 42;
  double height = 140.0;
  int age = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF27223D),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Color(0xFF27223D),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Card(
                          color:
                              isMale == true ? Colors.teal : Color(0xFF443C68),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 45,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Card(
                          color:
                              isMale == false ? Colors.teal : Color(0xFF443C68),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 45,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //color: Colors.blue[100],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                color: Color(0xFF443C68),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.toStringAsFixed(0)}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 22),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      min: 120,
                      max: 180,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      activeColor: Colors.teal,
                      inactiveColor: Colors.grey,
                      thumbColor: Colors.teal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(15)),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(15)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        color: Color(0xFF443C68),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${age}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(15)),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(15)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        color: Color(0xFF443C68),
                      ),
                    ),
                  ],
                ),
                //color: Colors.pink[100],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              //color: Color(0xFF380F3F),
              color: Colors.teal,
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Result(bmi: result),
                    ),
                  );
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
