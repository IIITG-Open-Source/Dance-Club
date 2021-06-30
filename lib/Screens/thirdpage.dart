import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width =  MediaQuery.of(context).size.width;
    return
    Scaffold(
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
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/3rd.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: height*0.4),
              child: Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: width*0.08),
                        child: Text("The Events conducted are as follows :  \n\n -Yuvaan\n -Alruwahani\n -Garba Night \n -Online Dance Competitions\n -"
                            "Workshops and More......",
                        style:
                        GoogleFonts.dancingScript(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: width*0.7,top: height*0.2),
                    child: Text("Achievements : ",
                    style: GoogleFonts.dancingScript(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width*0.7,top: height*0.3),
                    child: Text("-Best Performing Club of IIITG  2019\n-3rd position in Guwahati University's Dance competition",
                        style: GoogleFonts.dancingScript(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        )),
                  ),

                ],
              ),
            ),

          ),
        ),
      );

  }
}
