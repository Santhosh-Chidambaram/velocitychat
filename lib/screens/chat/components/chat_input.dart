import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(
              Icons.mic,
              color: kPrimaryColor,
            ),
            onPressed: () {}),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 14.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                        hintText: 'Type a Message'),
                  ),
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Icon(Icons.attach_file),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Icon(Icons.camera_alt_outlined),
              ],
            ),
          ),
        )
      ],
    );
  }
}
