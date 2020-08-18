import 'package:Bmi_Calculator/Screen/Componant/Bottom_btn.dart';
import 'package:Bmi_Calculator/Screen/Componant/CalculatorBrain.dart';
import 'package:Bmi_Calculator/Screen/ResulatPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Componant/CradItem_Detail.dart';

enum Gender { Male, Female }
Gender gender;
// ignore: non_constant_identifier_names
int Height = 180;
// ignore: non_constant_identifier_names
int Weight = 60;
// ignore: non_constant_identifier_names
int Age = 20;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Color CardColor = Color(0xFF1d1e33);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: CardItem(
                  pressed: () {},
                  Card_color:
                      gender == Gender.Male ? CardColor : Color(0xFF111328),
                  Card_child: Card_Detail(
                    Lable: "Male",
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: CardItem(
                  pressed: () {
                    gender = Gender.Female;
                  },
                  Card_child: Card_Detail(
                    Lable: "Female",
                    icon: FontAwesomeIcons.venus,
                  ),
                  Card_color:
                      gender == Gender.Female ? CardColor : Color(0xFF111328),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CardItem(
            Card_child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                    style: TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 18,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      Height.toString(),
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                    Text('Cm',
                        style: TextStyle(
                          color: Color(0xFF8D8E98),
                          fontSize: 18,
                        )),
                  ],
                ),
                Slider(
                  min: 100,
                  max: 250,
                  value: Height.toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      Height = value.round();
                    });
                  },
                ),
              ],
            ),
            Card_color: CardColor,
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: CardItem(
                  Card_child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(
                          color: Color(0xFF8D8E98),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        Weight.toString(),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              setState(() {
                                Weight++;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6,
                            fillColor: Color(0xFFEB1555),
                            constraints:
                                BoxConstraints.tightFor(width: 50, height: 50),
                          ),
                          SizedBox(width: 10),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                Weight--;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6,
                            fillColor: Color(0xFFEB1555),
                            constraints:
                                BoxConstraints.tightFor(width: 50, height: 50),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Card_color: CardColor,
                ),
              ),
              Expanded(
                child: CardItem(
                  Card_child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          color: Color(0xFF8D8E98),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        Age.toString(),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              setState(() {
                                Age++;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6,
                            fillColor: Color(0xFFEB1555),
                            constraints:
                                BoxConstraints.tightFor(width: 50, height: 50),
                          ),
                          SizedBox(width: 10),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                Age--;
                              });
                            },
                            shape: CircleBorder(),
                            elevation: 6,
                            fillColor: Color(0xFFEB1555),
                            constraints:
                                BoxConstraints.tightFor(width: 50, height: 50),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Card_color: CardColor,
                ),
              ),
            ],
          ),
        ),
        Bottom_btn(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: Height, weight: Weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResulatPage(
                            bmiResults: calc.calculatorBMI(),
                            resultsText: calc.getResult(),
                            intrpretaion: calc.getInterpretation(),
                          )));
            },
            title: 'Calculate')
      ],
    );
  }
}
