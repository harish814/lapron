import 'package:flutter/material.dart';
import 'package:lapron/compotants/componants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapron/compotants/mainpage_components/about_us.dart';
import 'package:lapron/compotants/mainpage_components/our_services.dart';
import 'package:lapron/compotants/mainpage_components/reach_us.dart';
import 'package:lapron/compotants/mainpage_components/software_solution.dart';
import 'package:lapron/screenSizePages/pcPages/services_page.dart';
import 'package:lapron/screenSizePages/pcPages/software_solutions.dart';

import '../../main_page.dart';

class PcMainPage extends StatelessWidget {

  ScrollController scrollController = new ScrollController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
              scrollController.animateTo(
                0.0,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 300),
              );
            },
            child: Icon(Icons.arrow_upward,color: Colors.white,),
            backgroundColor: Colors.blueGrey,
          ),
          key: scaffoldState,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            controller: scrollController,
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
                                    return await Scrollable.ensureVisible(
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
                              'Lapron Technologies',
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
                              'We Innovate, We Develop!',
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
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 3, color: Colors.green),
                        bottom: BorderSide(width: 3, color: Colors.green),
                      ),
                      color: Color(0xff0F2731),
                    ),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          key: dataKey,
                            child: AboutUs()),
                        SizedBox(
                          height: 18,
                        ),
                        OurServices(),
                        SizedBox(
                          height: 18,
                        ),
                        SoftwareSolution(),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                            key:dataKey2,
                            child: ReachUs()),
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
        ),
      ],
    );
  }
}
