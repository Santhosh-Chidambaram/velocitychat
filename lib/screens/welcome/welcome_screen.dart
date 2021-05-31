import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocitychat/screens/auth/auth_select_screen.dart';

const titleStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset('assets/images/welcome_image.png'),
            Spacer(
              flex: 2,
            ),
            Text(
              'Welcome to our Messaging App',
              style: titleStyle,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text('Have Freedom in chatting with any person you want.'),
            Spacer(
              flex: 2,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AuthSelectScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).textTheme.bodyText1.color)
                  ],
                )),
            SizedBox(
              height: kDefaultPadding / 1,
            )
          ],
        ),
      ),
    );
  }
}
