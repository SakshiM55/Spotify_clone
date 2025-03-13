import 'dart:async';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:get/get.dart';
//import 'package:spotifyui/state_management/notify.dart';
import '../../notify.dart';


import 'Home/homepage.dart';
import 'Search/search.dart';
import 'library/library.dart';
import 'premium/premium.dart';

import 'package:awesome_notifications/awesome_notifications.dart';

void main() {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
     DeviceOrientation.portraitUp
  ]);
  AwesomeNotifications().initialize(null, [
    // notification icon
    NotificationChannel(
      channelGroupKey: 'basic_test',
      channelKey: 'basic',
      channelName: 'Basic notifications',
      channelDescription: 'Notification channel for basic tests',
      channelShowBadge: true,
      importance: NotificationImportance.High,
      enableVibration: false,
    ),
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Notify notify = Get.put(Notify());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => const Search(),
        '/library': (context) => const LibraryScreen(),
        '/premium': (context) => Premium(),
      },
    );
  }
}

