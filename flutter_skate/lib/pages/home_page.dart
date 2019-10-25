import 'package:flutter/material.dart';
import 'package:flutter_skate/utils/fade_animations.dart';
import 'package:flutter_skate/widgets/header.dart';
import 'package:flutter_skate/widgets/popular.dart';
import 'package:flutter_skate/widgets/search.dart';
import 'package:flutter_skate/widgets/video.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeAnimation(1.4, HeaderWidget()),
            SizedBox(height: 20),
            FadeAnimation(1.6, SearchWidget()),
            SizedBox(height: 20),
            FadeAnimation(1.8, PopularData()),
            SizedBox(height: 20),
            FadeAnimation(2, VideoWidget())
          ],
        ),
      ),
    );
  }
}