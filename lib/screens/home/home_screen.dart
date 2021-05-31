import 'package:velocitychat/constants.dart';
import 'package:velocitychat/screens/calls/calls_screen.dart';
import 'package:velocitychat/screens/chat/chat_screen.dart';
import 'package:velocitychat/screens/people/people_screen.dart';
import 'package:velocitychat/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new ChatScreen();
      case 1:
        return new PeopleScreen();
      case 2:
        return new CallsScreen();
      case 3:
        return new ProfileScreen();
      default:
        return new Text("Error");
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kPrimaryColor,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      body: SafeArea(
        child: _getDrawerItemWidget(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt), label: 'People'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Calls'),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
