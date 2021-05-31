import 'package:velocitychat/components/primary_button.dart';
import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatefulWidget {
  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  TextEditingController _usernameController;

  @override
  void initState() {
    super.initState();
    setState(() {
      _usernameController = TextEditingController(text: 'test value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Edit Profile'),
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
                  radius: 45,
                ),
              ),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              inputItem('Name', _usernameController),
              inputItem('Email', _usernameController),
              inputItem('Phone', _usernameController),
              SizedBox(
                height: kDefaultPadding * 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButton(
                    width: 60.0,
                    buttonText: 'Cancel',
                    onPress: () {
                      Navigator.pop(context);
                    },
                    buttonColor: Colors.transparent,
                    padding: 30.0,
                  ),
                  SizedBox(
                    width: kDefaultPadding / 1,
                  ),
                  PrimaryButton(
                    width: 60.0,
                    buttonText: 'Save Profile',
                    onPress: () {},
                    buttonColor: kPrimaryColor,
                    padding: 30.0,
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

Widget inputItem(String inputFieldText, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Expanded(flex: 1, child: Text(inputFieldText)),
        Expanded(
            flex: 2,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide.none,
                  //borderSide: const BorderSide(),
                ),
              ),
            ))
      ],
    ),
  );
}
