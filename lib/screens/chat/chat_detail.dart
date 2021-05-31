import 'package:velocitychat/constants.dart';
import 'package:velocitychat/models/chat_message.dart';
import 'package:velocitychat/screens/chat/components/chat_input.dart';
import 'package:velocitychat/screens/chat/components/message_card.dart';
import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: demeChatMessages.length,
                          itemBuilder: (context, index) {
                            return ChatMessageCard(
                                chatMessage: demeChatMessages[index]);
                          })),
                  ChatInputField()
                ],
              )),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
            radius: 18,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jenny Wilson',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Active 3m ago',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              )
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.phone,
              color: Colors.white,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            onPressed: () {}),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
