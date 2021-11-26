import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapron/compotants/componants.dart';
import 'package:lapron/screenSizePages/pcPages/services_page.dart';

import '../../main_page.dart';

class SoftwareSolutions extends StatelessWidget {

  ScrollController _scrollController = new ScrollController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.75), BlendMode.srcOver),
              )),
          width: double.infinity,
        ),
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              _scrollController.animateTo(
                0.0,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 300),
              );
            },
            child: Icon(Icons.arrow_upward,color: Colors.white,),
            backgroundColor: Colors.blueGrey,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(color: Colors.black54, child: Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width * 0.009765625,horizontal: 45),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: RichText(
                                text: TextSpan(
                                    text: 'Lapron Technology',
                                    style: GoogleFonts.merriweather(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 30,
                                        color: Colors.white
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '.',
                                        style: GoogleFonts.merriweather(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 40,
                                            color: Colors.green
                                        ),
                                      )
                                    ]
                                )
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Wrap(
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () => Navigator.popUntil(context,
                                      ModalRoute.withName(Navigator.defaultRouteName)),
                                  child: Text(
                                    "HOME",
                                    style: buttonTextStyle,
                                  ),
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FlatButton(
                                  onPressed: () async{
                                    return await Scrollable
                                        .ensureVisible(
                                        dataKey.currentContext!);
                                  },
                                  child: Text(
                                    "ABOUT US",
                                    style: buttonTextStyle,
                                  ),
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FlatButton(
                                  child: Text(
                                    "SERVICES",
                                    style: buttonTextStyle,
                                  ),
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesPage()));
                                  },
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SoftwareSolutions()));
                                  },
                                  child: Text(
                                    "SOFTWARE SOLUTIONS",
                                    style: buttonTextStyle,
                                  ),
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FlatButton(
                                  onPressed: () async{
                                    return await Scrollable
                                        .ensureVisible(
                                        dataKey2.currentContext!);
                                  },
                                  child: Text(
                                    "CONTACT US",
                                    style: buttonTextStyle,
                                  ),
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Container(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Software Solutions',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 90,
                                  color: Colors.white,
                                  letterSpacing: 8),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'We offer hassle free software solutions to your business problem',
                              style: GoogleFonts.josefinSans(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 35,
                                  color: Colors.white,
                                  letterSpacing: 3),
                            ),
                            SizedBox(
                              height: 120,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: w * 0.09765625, right: w * 0.1627604166666667),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 3, color: Colors.green),
                        bottom: BorderSide(width: 3, color: Colors.green),
                      ),
                      color: Color(0xff0F2731),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 80
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(w * 0.009765625),
                                color: Colors.transparent,
                                child: Image.asset('images/ux5.jpg',fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: w * 0.009765625),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'ENTERPRISE MOBILITY',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              color: Colors.white,
                                              letterSpacing: 0.5,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '.',
                                                style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 40,
                                                  color: Colors.green,
                                                  letterSpacing: 0.5,
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Divider(
                                      color: Colors.green,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Text(
                                        'Mobility is one of the most disruptive technologies in the modern world. Adopting industry specific mobility solutions drives the business in correct direction. Areas where Lapron Technologies plays a key role through mobility include:\n    - Using mobility to improve efficiency by reducing the time of a transaction\n    - Using mobility for decision making\n    - Using mobility as a medium or channel for brands\n    - Using mobility to increase sales and revenues',
                                        style: GoogleFonts.josefinSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22,
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            height: 1.5
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top:w * 0.009765625),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'WEB PLATFORM SOLUTIONS',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              color: Colors.white,
                                              letterSpacing: 0.5,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '.',
                                                style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 40,
                                                  color: Colors.green,
                                                  letterSpacing: 0.5,
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Divider(
                                      color: Colors.green,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Text(
                                        'Lapron Technologies shall extend to its users a complete ecosystem that has powerful tools, technologies and secure servers. We as industry experts enable our clientele to build interactive solutions from the advanced form of Web 2.0 to the beginning stages of the new Web 3.0 ecosystem.',
                                        style: GoogleFonts.josefinSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22,
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            height: 1.5
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(w * 0.009765625),
                                color: Colors.transparent,
                                child: Image.asset('images/ux5.jpg',fit: BoxFit.cover,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(w * 0.009765625),
                                color: Colors.transparent,
                                child: Image.asset('images/ux6.jpg',fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: w * 0.009765625),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'DEVOPS',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 28,
                                              color: Colors.white,
                                              letterSpacing: 0.5,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '.',
                                                style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 40,
                                                  color: Colors.green,
                                                  letterSpacing: 0.5,
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Divider(
                                      color: Colors.green,
                                      thickness: 2,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Text(
                                        'Lapron Technologies develops development software for enterprises and corporates that emphasizes on communication and collaboration between product management, and operations that closely align with business objectives and operations. It has a high demand in various verticals of every industry.',
                                        style: GoogleFonts.josefinSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22,
                                            color: Colors.white,
                                            letterSpacing: 0.5,
                                            height: 1.5
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                  BottomBar(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
