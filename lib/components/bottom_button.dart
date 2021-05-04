import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton(
      {Key key, @required this.onTap, @required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        )),
        decoration: BoxDecoration(
            color: KBottomContainerColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
      ),
    );
  }
}
