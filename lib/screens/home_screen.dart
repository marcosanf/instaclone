import 'package:flutter/material.dart';
import 'package:instaclone/components/button_navigation.dart';
import 'package:instaclone/components/friend_post.dart';
import 'package:instaclone/components/friend_profile_icon.dart';
import 'package:instaclone/components/simple_icon.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          leadingWidth: 120,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                children: [
                  SimpleIcon(
                    iconName: 'plus-sign',
                    height: 27.0,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  SimpleIcon(
                    iconName: 'love',
                    height: 27.0,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  SimpleIcon(
                    iconName: 'send2',
                    height: 27.0,
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 55.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                offset: Offset(2, 0),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonNavigation(
                image: 'home',
              ),
              ButtonNavigation(
                image: 'loupe',
              ),
              ButtonNavigation(
                image: 'video',
              ),
              ButtonNavigation(
                image: 'shopping-bag',
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 17.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stories',
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.play_arrow_outlined),
                      Text(
                        'Watch all',
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 115.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          FriendProfileIcon(
                            imageProfile: 'profile',
                            sizeBorder: 35.0,
                            sizeImageBackgroud: 31.0,
                            sizeBlank: 33.0,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('marcosanfc')
                        ],
                      ),
                    );
                  }),
            ),
            FriendPost(),
            FriendPost(),
            FriendPost()
          ],
        ),
      ),
    );
  }
}
