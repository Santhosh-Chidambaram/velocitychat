import 'package:velocitychat/components/primary_button.dart';
import 'package:velocitychat/constants.dart';
import 'package:velocitychat/screens/auth/components/app_logo.dart';
import 'package:velocitychat/screens/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppLogo(),
            SizedBox(
              height: kDefaultPadding * 1,
            ),
            Center(
              child: Text(
                'Sign Up',
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
                        Icons.account_circle,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                      hintText: 'Username',
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
                        Icons.email,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                      hintText: 'Email',
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
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_open_rounded,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                      hintText: 'Password',
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
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_open_rounded,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                      hintText: 'Repeat Password',
                      border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide.none,
                        //borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding * 2,
                  ),
                  PrimaryButton(buttonText: 'Register', onPress: () {}),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignInScreen();
                              }));
                            },
                            child: Text(
                              'Sign In',
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
