import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Tiles extends StatelessWidget {

  final String title;
  final GFAvatarShape shape;
  const Tiles(this.title, this.shape);

  @override
  Widget build(BuildContext context) {
    return GFListTile(
      avatar: GFAvatar(
        radius: 30,
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white54,
        ),
        backgroundColor: Colors.grey[900],
        shape: shape,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}