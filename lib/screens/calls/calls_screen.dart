import 'package:velocitychat/constants.dart';
import 'package:velocitychat/models/calls.dart';
import 'package:velocitychat/screens/calls/components/calls_card.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Calls'),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: callsData.length,
            itemBuilder: (context, index) {
              return CallsCard(callData: callsData[index]);
            }),
      ),
    );
  }
}
