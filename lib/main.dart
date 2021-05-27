import 'package:dancewebsite/Screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DanceWebsite());
}

class DanceWebsite extends StatefulWidget {
  const DanceWebsite({Key key}) : super(key: key);

  @override
  _DanceWebsiteState createState() => _DanceWebsiteState();
}

class _DanceWebsiteState extends State<DanceWebsite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
