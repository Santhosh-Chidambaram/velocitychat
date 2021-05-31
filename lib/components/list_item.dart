import 'package:velocitychat/constants.dart';
import 'package:flutter/material.dart';

const labelStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400);

const valueStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400);

class ListItem extends StatelessWidget {
  final String label, value;
  ListItem({@required this.label, @required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: labelStyle,
          ),
          SizedBox(
            width: kDefaultPadding * 4,
          ),
          Flexible(
              child: Text(
            value,
            overflow: TextOverflow.clip,
            style: valueStyle,
          ))
        ],
      ),
    );
  }
}
