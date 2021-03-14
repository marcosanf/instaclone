import 'package:flutter/material.dart';
import 'package:instaclone/components/friend_profile_icon.dart';
import 'package:instaclone/components/simple_icon.dart';

class FriendPost extends StatelessWidget {
  const FriendPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 8.0,
                    ),
                    FriendProfileIcon(
                      imageProfile: 'profile',
                      sizeBorder: 20.0,
                      sizeBlank: 18.0,
                      sizeImageBackgroud: 16.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('marcosanf.c')
                  ],
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(child: Text('Ok')),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Image.asset('images/profile.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 8.0),
                    SimpleIcon(iconName: 'love', height: 25.0),
                    SizedBox(width: 15.0),
                    SimpleIcon(iconName: 'speech-bubble', height: 25.0),
                    SizedBox(width: 15.0),
                    SimpleIcon(iconName: 'send2', height: 25.0),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SimpleIcon(iconName: 'bookmark', height: 25.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
