import 'package:velocitychat/constants.dart';
import 'package:velocitychat/models/people.dart';
import 'package:velocitychat/screens/people/components/people_card.dart';
import 'package:flutter/material.dart';

class PeopleScreen extends StatefulWidget {
  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('People'),
          ],
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: peoplesData.length,
              itemBuilder: (context, index) {
                return PeopleCard(
                    username: peoplesData[index].name,
                    number: peoplesData[index].number,
                    avatar: peoplesData[index].image);
              })),
    );
  }
}
