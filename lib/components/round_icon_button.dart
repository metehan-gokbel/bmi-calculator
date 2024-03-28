import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key,required this.iconData,required this.onPressed});

  final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
          width: 50.0,
          height: 50.0
      ),
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: kCircleColor,
      child: Icon(iconData, color: kIconColor,),
    );
  }
}