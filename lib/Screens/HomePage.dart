import 'package:dancewebsite/Screens/firstpage.dart';
import 'package:dancewebsite/Screens/fourthpage.dart';
import 'package:dancewebsite/Screens/secondpage.dart';
import 'package:dancewebsite/Screens/thirdpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController p1 = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppbarButton(p1: p1, title: "Home",pgNumber: 0,),
            SizedBox(width: 10,),
            AppbarButton(p1: p1, title: "Gallery",pgNumber: 1,),
            SizedBox(width: 10,),
            AppbarButton(p1: p1, title: "Events",pgNumber: 2,),
            SizedBox(width: 10,),
            AppbarButton(p1: p1, title: "About Us",pgNumber: 3,),
          ],
        ),
        elevation: 0,
        leading: Image(
          image: AssetImage("images/logo.png"),
        ),
      ),
      body: PageView(
        controller:p1,
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

class AppbarButton extends StatelessWidget {

  final String title;
  final PageController p1;
  final int pgNumber;
  AppbarButton({this.p1,this.title,this.pgNumber});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        p1.animateToPage(pgNumber, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
      },
      child: Text("$title",style: GoogleFonts.dmSans(color: Color(0xFF2A817D),fontSize: 20,fontWeight: FontWeight.bold),
      ),
    );
  }
}
