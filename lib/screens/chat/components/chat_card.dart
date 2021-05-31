import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String username;
  final String lastMessage;
  final String time;
  final String avatar;
  final bool isActive;
  final Function onPress;
  ChatCard(
      {@required this.username,
      @required this.lastMessage,
      @required this.time,
      @required this.avatar,
      @required this.isActive,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(avatar),
                ),
                Positioned(
                  bottom: 1,
                  right: 0,
                  child: Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                        color: isActive ? kPrimaryColor : kErrorColor,
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Opacity(
                    opacity: 0.64,
                    child: Text(
                      lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Opacity(
              opacity: 0.64,
              child: Text(
                time,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
