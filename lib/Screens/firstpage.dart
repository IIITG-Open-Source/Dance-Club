import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {


  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        /*appBar: AppBar(
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
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text("Welcome to IIITG\n    D-Dazzlers",
                      style:
                      GoogleFonts.dancingScript(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 90,left: 60),
                    child: Text(
                      "The first dance is the worst dance,\n  The last dance is the best dance.\nAll the roads of persistent practice\n   Lead to the Land of Perfection!",
                      style: GoogleFonts.openSans(
                        color: Color(0xFF03989E),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )

                ],
              ),
            ),


          ),
        ),
      );

  }
}

