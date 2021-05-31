import 'package:velocitychat/components/primary_button.dart';
import 'package:velocitychat/constants.dart';
import 'package:velocitychat/screens/auth/components/app_logo.dart';
import 'package:velocitychat/screens/auth/signup_screen.dart';
import 'package:velocitychat/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isLightTheme =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AppLogo(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Center(
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: kDefaultPadding * 1.5,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide.none,
                        //borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                      hintText: 'Enter password',
                      border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide.none,
                        //borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  PrimaryButton(
                    buttonText: 'Login',
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    buttonColor: kPrimaryColor,
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Center(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 16.0),
                          ))),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont\'t have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUpScreen();
                              }));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: kPrimaryColor, fontSize: 16.0),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
