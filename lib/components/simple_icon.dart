import 'package:flutter/material.dart';

class SimpleIcon extends StatelessWidget {
  final String iconName;
  final double height;
  const SimpleIcon({@required this.iconName, @required this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/$iconName.png',
      height: height,
    );
  }
}
