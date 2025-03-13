import 'package:flutter/material.dart';
import 'package:spotify_clone/Home/widgets/headerActions.dart';
import 'package:spotify_clone/Home/widgets/playlists.dart';
import 'package:spotify_clone/Home/widgets/recent.dart';
import 'package:spotify_clone/Home/widgets/jumpIn.dart';
import '../../bottom_navigation.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(57, 90, 81, 1),
                Color.fromRGBO(46, 71, 65, 1),
                Color.fromRGBO(43, 64, 59, 1),
                Color.fromRGBO(18, 18, 18, 1),
              ],
              stops: [
                0.01,
                0.03,
                0.06,
                0.2,
              ],
            ),
          ),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Good evening",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'LibreFranklin'
                      ),
                    ),
                  ),
                  HeaderActions(),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 210,
                child: const Playlists(),
              ),
              const SizedBox(height: 20),
              const RecentlyPlayed(),
              const JumpIn(),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(0),
      ),
    );
  }
}
