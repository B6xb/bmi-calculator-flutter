import '../Constatnts.dart';
import 'package:flutter/material.dart';

class LowerButton extends StatelessWidget {
  LowerButton({@required this.onTap, @required this.text});
  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        height: kContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kLowerClacButton,
          ),
        ),
      ),
    );
  }
}
