import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPress;
  final Color buttonColor;
  final double padding;
  final double width;
  PrimaryButton(
      {@required this.buttonText,
      @required this.onPress,
      this.buttonColor = kSecondaryColor,
      this.padding = kDefaultPadding,
      this.width = double.infinity});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.white),
      ),
      minWidth: width,
      color: buttonColor,
      padding: EdgeInsets.symmetric(horizontal: padding, vertical: 14.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
