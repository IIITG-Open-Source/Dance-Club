import 'package:dancewebsite/firstpage.dart';
import 'package:dancewebsite/fourthpage.dart';
import 'package:dancewebsite/secondpage.dart';
import 'package:dancewebsite/thirdpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children:[
          FirstPage(),
          SecondPage(),
          ThirdPage(),
          FourthPage(),

        ],

      ),
    );
  }
}
