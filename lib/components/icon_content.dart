import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constatnts.dart';

final double IconCardS = 80;

class IconCard extends StatelessWidget {
  IconCard(this._fontIcon, this._label);

  final IconData _fontIcon;
  final String _label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _fontIcon,
          size: IconCardS,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          _label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
