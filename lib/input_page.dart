import 'package:bmi_calculator_flutter/icon_content.dart';
import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = selectedGender == Gender.male ? null : Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActiveCardColor : kInActiveCardColor,
                  cardChild: IconContent(
                    iconData: Icons.male,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = selectedGender == Gender.female ? null : Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female ? kActiveCardColor : kInActiveCardColor,
                  cardChild: IconContent(
                    iconData: Icons.female,
                    label: 'FEMALE',
                  ),
                )),
              ],
            )),
            Expanded(child: ReusableCard(
                colour: kInActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT', style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextStyle,),
                        const Text('cm', style: kLabelTextStyle,),
                      ],
                    ),
                    SliderTheme(
                      data: const SliderThemeData(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 10.0
                        ),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0)
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        activeColor: kLabelTextColor,
                        inactiveColor: Color(0XFF8D8E98),
                      ),
                    )
                  ],
                ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableCard(
                    colour: kInActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {

                              },
                              shape: const CircleBorder(),
                              backgroundColor: kIconColor,
                              child: const Icon(Icons.add, color: Colors.white,),
                            ),
                            const SizedBox(width: 10.0,),
                            FloatingActionButton(
                              onPressed: () {

                              },
                              shape: const CircleBorder(),
                              backgroundColor: kIconColor,
                              child: const Icon(Icons.add, color: Colors.white,),
                            ),
                          ],
                        )
                      ],
                    ),
                )),
                Expanded(child: ReusableCard(colour: kInActiveCardColor)),
              ],
            )),
            Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
