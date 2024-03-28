import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onPressed,
    required this.buttonTitle
  });

  final VoidCallback onPressed;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kCircleColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}