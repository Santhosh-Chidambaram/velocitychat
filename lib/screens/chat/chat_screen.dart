import 'package:velocitychat/constants.dart';
import 'package:velocitychat/models/chat.dart';
import 'package:velocitychat/screens/chat/chat_detail.dart';
import 'package:velocitychat/screens/chat/components/chat_card.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Chats'),
            Icon(Icons.search),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) {
              return ChatCard(
                username: chatsData[index].name,
                lastMessage: chatsData[index].lastMessage,
                time: chatsData[index].time,
                avatar: chatsData[index].image,
                isActive: chatsData[index].isActive,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChatDetailScreen();
                  }));
                },
              );
            }),
      ),
    );
  }
}
