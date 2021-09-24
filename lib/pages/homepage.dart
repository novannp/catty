import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff29CB9E),
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profile1.png',
                        name: 'Joshua',
                        chat: 'Sorry, you’re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profile2.png',
                        name: 'Gabriella',
                        chat: 'I saw it clearly and mig...',
                        time: '2:30',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profile_chat.png',
                        name: 'Gabriella',
                        chat: 'I saw it clearly and mig...',
                        time: '2:30',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_icon3.png',
                        name: 'Gabriella',
                        chat: 'I saw it clearly and mig...',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_icon.png',
                        name: 'Jakarta Fair',
                        chat: 'Why does everyone ca...',
                        time: '2:30',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_icon2.png',
                        name: 'Angga',
                        chat: 'Here here we can go...',
                        time: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group_icon3.png',
                        name: 'Mepeg',
                        chat: 'The car which does not...',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
