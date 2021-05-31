import 'package:velocitychat/components/list_item.dart';
import 'package:velocitychat/components/primary_button.dart';
import 'package:velocitychat/constants.dart';
import 'package:velocitychat/screens/profile/edit_profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Profile'),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user_2.png'),
                  radius: 55,
                ),
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              Center(
                child: Text(
                  'Username',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              ListItem(
                label: 'Username',
                value: 'Test User',
              ),
              ListItem(
                label: 'Phone',
                value: '+9197XXXXXXX',
              ),
              ListItem(
                label: 'Email Address',
                value: 'testuser@gmail.com',
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: PrimaryButton(
                      width: 60.0,
                      buttonText: 'Edit Profile',
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProfileEditScreen();
                        }));
                      },
                      buttonColor: kPrimaryColor,
                      padding: 30.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
