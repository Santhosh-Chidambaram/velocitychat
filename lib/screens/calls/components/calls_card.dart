import 'package:velocitychat/constants.dart';
import 'package:velocitychat/models/calls.dart';
import 'package:flutter/material.dart';

class CallsCard extends StatelessWidget {
  final Calls callData;
  CallsCard({
    @required this.callData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(callData.image),
                ),
                Positioned(
                  bottom: 1,
                  right: 0,
                  child: Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                        color: callData.isActive ? kPrimaryColor : kErrorColor,
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
                    callData.name,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (callData.callStatus == CallStatus.called
                          ? Icon(
                              Icons.call_made,
                              color: kPrimaryColor,
                              size: 19.0,
                            )
                          : Icon(
                              Icons.call_missed,
                              color: kErrorColor,
                              size: 19.0,
                            )),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.64,
                          child: Text(
                            callData.time,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                      callData.callType == CallType.audio
                          ? Icon(
                              Icons.phone,
                              color: kPrimaryColor,
                              size: 19.0,
                            )
                          : Icon(
                              Icons.videocam,
                              color: kPrimaryColor,
                              size: 19.0,
                            )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
