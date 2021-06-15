import 'package:dancewebsite/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
          body: HomePage()),
      debugShowCheckedModeBanner: false,
       builder: (context,widget){
        return ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget),
            maxWidth: 1800,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            );},
    );
  }
}
