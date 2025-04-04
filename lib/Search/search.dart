import 'package:flutter/material.dart';

import '../bottom_navigation.dart';
import './widgets/searchWidget.dart';
import './widgets/topgenres.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 80),
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: ListView(
            children: const [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: 'LibreFranklin',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SearchWidget(),
              TopGenre(),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(1),
      ),
    );
  }
}