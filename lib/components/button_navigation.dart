import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  final String image;

  ButtonNavigation({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 10, 25, 10),
      child: GestureDetector(
        child: Image.asset(
          'images/$image.png',
          height: 27.0,
        ),
      ),
    );
  }
}
