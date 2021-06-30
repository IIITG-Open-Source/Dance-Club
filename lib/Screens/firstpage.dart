import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstPage extends StatefulWidget {


  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return
      Scaffold(
        body: ResponsiveBuilder(
          builder: (BuildContext, sizing)
          {
              if(sizing.isDesktop){
                return SizedBox.expand(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: height*0.6),
                      child: Stack(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: width*0.095),
                            child: Text("Welcome to IIITG\n    D-Dazzlers",
                              style:
                              GoogleFonts.dancingScript(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(top: height*0.11,left: width*0.075),
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
                );
              }
              if(sizing.isMobile){
                return SizedBox.expand(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: height*0.1),
                      child: Stack(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(),
                            child: Text("Welcome to IIITG\nD-Dazzlers",
                              style:
                              GoogleFonts.dancingScript(
                                fontSize: 55,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(top: height*0.71,left: width*0.2),
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
                );
              }
              return CircularProgressIndicator();
              }
        )
      );

  }
}

