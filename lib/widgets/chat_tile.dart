import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/pages/chat.dart';

class ChatTile extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? chat;
  final String? time;
  final bool? unread;

  ChatTile({this.imageUrl, this.name, this.chat, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: GestureDetector(
        onTap: () {
          ChatPage();
        },
        child: Row(
          children: [
            Image.asset(
              imageUrl!,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: titleTextStyle,
                ),
                Text(
                  chat!,
                  style: unread!
                      ? subtitleTextStyle.copyWith(
                          color: blackColor,
                        )
                      : subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Text(
              time!,
              style: subtitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
