import 'dart:developer';

import 'package:velocitychat/components/primary_button.dart';
import 'package:velocitychat/constants.dart';
import 'package:velocitychat/screens/auth/components/app_logo.dart';
import 'package:velocitychat/screens/auth/signin_screen.dart';
import 'package:velocitychat/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(
              flex: 1,
            ),
            AppLogo(),
            Spacer(
              flex: 1,
            ),
            PrimaryButton(
              buttonText: 'Login',
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignInScreen();
                }));
              },
              buttonColor: kPrimaryColor,
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            PrimaryButton(
                buttonText: 'Register',
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                }),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      )),
    );
  }
}
