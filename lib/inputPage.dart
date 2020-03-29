import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'gender.enum.dart';
import 'iconContent.dart';
import 'reusableCard.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender currentChosenGender;

  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      color: currentChosenGender == Gender.Male
                          ? activeCardColor
                          : inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        desc: "Male",
                      ),
                      onTap: () {
                        setState(() {
                          this.currentChosenGender = Gender.Male;
                        });
                      }),
                ),
                Expanded(
                  child: ReusableCard(
                      color: currentChosenGender == Gender.Female
                          ? activeCardColor
                          : inactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        desc: "Female",
                      ),
                      onTap: () {
                        setState(() {
                          this.currentChosenGender = Gender.Female;
                        });
                      }),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: inactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Height"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: textStyle,
                      ),
                      Text('cm')
                    ],
                  ),
                  Slider(
                    activeColor: bottomContainerColor,
                    inactiveColor: Color(0xFF8D8E98),
                    min: 120.0,
                    max: 220.0,
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: inactiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            color: bottomContainerColor,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
