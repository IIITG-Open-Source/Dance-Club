import 'package:dancewebsite/Screens/HomePage.dart';
import 'package:flutter/material.dart';

import 'Screens/firstpage.dart';
import 'Screens/fourthpage.dart';
import 'Screens/secondpage.dart';
import 'Screens/thirdpage.dart';

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
      initialRoute: '/Home',
      routes: {
        '/Home':(context)=> HomePage(),
        '/FirstPage': (context) => FirstPage(),
        '/SecondPage': (context) => SecondPage(),
        '/ThirdPage': (context) => ThirdPage(),
        '/FourthPage': (context) => FourthPage()
      },
      home: Scaffold(
         /* appBar: AppBar(
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
          ),*/
          body: HomePage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
