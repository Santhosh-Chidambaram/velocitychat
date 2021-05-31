import 'package:velocitychat/constants.dart';
import 'package:velocitychat/models/chat_message.dart';
import 'package:flutter/material.dart';

class ChatMessageCard extends StatelessWidget {
  final ChatMessage chatMessage;
  ChatMessageCard({this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: chatMessage.isSender
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!chatMessage.isSender)
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_2.png'),
              radius: 14,
            ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: Text(
              chatMessage.text,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 4,
          ),
          if (chatMessage.isSender &&
              chatMessage.messageStatus == MessageStatus.viewed)
            Container(
              padding: EdgeInsets.all(1.0),
              child: Icon(
                Icons.done_rounded,
                size: 10.0,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
            )
          else if (chatMessage.isSender &&
              chatMessage.messageStatus == MessageStatus.not_sent)
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: kErrorColor,
                shape: BoxShape.circle,
              ),
            )
          else if (chatMessage.isSender &&
              chatMessage.messageStatus == MessageStatus.not_view)
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                shape: BoxShape.circle,
              ),
            )
        ],
      ),
    );
  }
}
