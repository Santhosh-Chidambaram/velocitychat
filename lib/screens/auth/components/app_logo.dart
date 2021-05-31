import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final double height, width;

  AppLogo({this.width = 150.0, this.height = 150.0});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
            tag: 'logo',
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              height: height,
              width: width,
              color: kPrimaryColor,
              matchTextDirection: true,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Velocity',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Pacifico',
              ),
            ),
            SizedBox(
              width: kDefaultPadding / 3,
            ),
            Text(
              'Chat',
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Pacifico',
                  color: kSecondaryColor),
            )
          ],
        )
      ],
    );
  }
}
