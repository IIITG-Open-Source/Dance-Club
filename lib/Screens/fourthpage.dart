import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF8A01D7),
                Color(0xFFB551F2),
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,

            )
        ),
        child: Center(child: Text("About Us"

            ,style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 25,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}