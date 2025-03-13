import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import './widgets/tiles.dart';
import './widgets/roundedCards.dart';
import './widgets/header.dart';
import '../bottom_navigation.dart';
import '../data.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
      body: ListView(
        children: [
          const Header(),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              RoundedCards('Playlists'),
              SizedBox(
                width: 10,
              ),
              RoundedCards('Artists'),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Recently played',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'LibreFranklin',
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),
          ...Data().library.map((val) {
            return GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage(
                  val['image'].toString(),
                ),
                radius: 30,
                shape: val['shape'] as dynamic,
              ),
              title: Text(
                val['name'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              subTitle: Text(
                val['subtitle'].toString(),
                style: const TextStyle(
                  color: Color.fromRGBO(167, 167, 167, 1),
                  fontSize: 14,
                ),
              ),
            );
          }).toList(),
          const Tiles('Add artists', GFAvatarShape.circle),
          const Tiles('Add podcasts & shows', GFAvatarShape.square),
        ],
      ),
      bottomNavigationBar: BottomBar(2),
    );
  }
}