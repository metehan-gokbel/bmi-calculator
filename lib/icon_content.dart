import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({
    super.key, required this.label, required this.iconData
  });

  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle ,
        )
      ],
    );
  }
}