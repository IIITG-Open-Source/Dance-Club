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
                image: AssetImage("images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: height*0.45),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width*0.77,top: height*0.20,right: width*0.01,bottom: height*0.09),
                    child: Card(
                      borderOnForeground: true,
                      color: Colors.transparent,
                      child: Form(
                        
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  
                                  border: InputBorder.none,
                                  fillColor: Colors.yellow,
                                  filled: true,
                                  labelText: "Name",
                                  labelStyle: GoogleFonts.openSans(
                                    color: Color(0xFF03989E),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),

                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  fillColor: Colors.yellow,
                                  filled: true,
                                  labelText: "Contact No.",
                                  labelStyle: GoogleFonts.openSans(
                                    color: Color(0xFF03989E),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: (){

                                },
                                child: Text(" Submit ",style: GoogleFonts.openSans(
                                  color: Colors.yellow,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,

                                ),
                                ),
                              ),

                            ],
                          ),
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: height*0.19,left: width*0.025),
                    child: Text(
                      "The Indian Institute Of Information Technology Guwahati\nDance Club was started in the year 2017\n\nThe club conducts events on most of the occasions\n\n"
                          "The Club Coordinators are as follows : \n\nSrujan Chikke(9999999999),\nSayantani Dutta(99999999999)",
                      style: GoogleFonts.openSans(
                        color: Color(0xFF03989E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),


      ),
        ),
         );

  }
}
