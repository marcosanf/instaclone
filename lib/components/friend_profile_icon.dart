import 'package:flutter/material.dart';

class FriendProfileIcon extends StatelessWidget {
  final String imageProfile;
  final double sizeBorder;
  final double sizeBlank;
  final double sizeImageBackgroud;

  FriendProfileIcon(
      {@required this.imageProfile,
      @required this.sizeBorder,
      this.sizeBlank,
      this.sizeImageBackgroud});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: sizeBorder,
      backgroundColor: Colors.lightGreenAccent,
      child: CircleAvatar(
        radius: sizeBlank,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: sizeImageBackgroud,
          backgroundImage: AssetImage('images/$imageProfile.jpg'),
        ),
      ),
    );
  }
}
