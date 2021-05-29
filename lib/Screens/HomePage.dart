import 'package:dancewebsite/Screens/firstpage.dart';
import 'package:dancewebsite/Screens/fourthpage.dart';
import 'package:dancewebsite/Screens/secondpage.dart';
import 'package:dancewebsite/Screens/thirdpage.dart';
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/FirstPage');
                  },
                  child: Text('Home')),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/SecondPage');
                  },
                  child: Text('Gallery')),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/ThirdPage');
                  },
                  child: Text('Events')),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/FourthPage');
                  },
                  child: Text('About Us'))
            ],
          ),
          elevation: 0,
          leading: Icon(
            Icons.dangerous,
            color: Colors.white,
          ),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          children:[
            FirstPage(),
            SecondPage(),
            ThirdPage(),
            FourthPage(),
          ],

        ),
      ),
    );
  }
}
