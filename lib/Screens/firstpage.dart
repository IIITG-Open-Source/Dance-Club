import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFB551F2),
                Color(0xFF8A01D7)
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,

            )
        ),
        child: Center(child: Text("HOME",style: GoogleFonts.dmSans(color: Colors.purple[100],fontSize: 25,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

