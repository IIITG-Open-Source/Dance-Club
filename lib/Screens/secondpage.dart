import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_insta/flutter_insta.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  CarouselController controller = CarouselController();
  int x=0;
 getprofile()async
 {
   FlutterInsta flutterInsta = new FlutterInsta();
   await flutterInsta.getProfileData("iyuxsh");
   print(flutterInsta.username);
 }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  //  controller.startAutoPlay();
   // getprofile();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 40,left: 20,right: 20),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.only(top: 40,left: 20,right: 20),
                child: Column(
                  children: [
                    Text("GALLERY",style: Theme.of(context).textTheme.headline3.copyWith(color: Color(0xFF2A817D)),),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent
                        ),
                        child: CarouselSlider(
                            items: [
                              MediaContainer2(),
                              MediaContainer2(),
                              MediaContainer2(),
                              MediaContainer2(),
                              MediaContainer2(),
                              MediaContainer2(),
                        ], options: CarouselOptions(
                          autoPlayCurve: Curves.elasticInOut,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          autoPlay: true,
                          aspectRatio: 1,
                          enlargeCenterPage:true,
                          scrollDirection: Axis.horizontal,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                        )),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 10,
                          addAutomaticKeepAlives: true,
                          addRepaintBoundaries: true,
                          childAspectRatio: 4/2,
                          children: [
                            MediaContainer(),
                            MediaContainer(),
                            MediaContainer(),
                           // MediaContainer(),
                           /* MediaContainer(),
                            MediaContainer(),
                            MediaContainer(),
                            MediaContainer(),
                            MediaContainer(),
                            MediaContainer(),*/
                          ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 80),
                      child: RaisedButton(
                        elevation: 20,
                        color: Colors.teal,
                        onPressed: (){},
                        child: Text("More Videos & Photos",style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              )
            ),
          )
        ),
      );

  }
}

class MediaContainer2 extends StatelessWidget {
  const MediaContainer2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10)
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 400,
        height: double.infinity,
      ),
    );
  }
}

class MediaContainer extends StatelessWidget {
  const MediaContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10)
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
