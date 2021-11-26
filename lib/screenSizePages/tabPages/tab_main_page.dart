import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapron/compotants/componants.dart';
import 'package:lapron/compotants/tabComponents.dart';
import 'package:lapron/compotants/tabMainpage_components/tab_about_us.dart';
import 'package:lapron/compotants/tabMainpage_components/tab_our_services.dart';
import 'package:lapron/compotants/tabMainpage_components/tab_reach_us.dart';
import 'package:lapron/compotants/tabMainpage_components/tab_software_solution.dart';
import 'package:lapron/screenSizePages/tabPages/tab_services_page.dart';
import 'package:lapron/screenSizePages/tabPages/tab_software_solutions.dart';

import '../../main_page.dart';

class TabMainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ScrollController _scrollController = new ScrollController();
    GlobalKey<ScaffoldState> scaffoldState = GlobalKey<ScaffoldState>();

    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      print(constraints.maxWidth);
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.75),
                      BlendMode.srcOver),
                )
            ),
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
            key: scaffoldState,
            endDrawer: Drawer(
              child: Expanded(
                child: Container(
                  color: Colors.blueGrey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close,color: Colors.black)),
                      SizedBox(
                        height: 15,
                      ),
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
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () async{
                          Navigator.pop(context);
                          return await Scrollable
                              .ensureVisible(
                              dataKey3.currentContext!);
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
                        height: 10,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TabServicesPage()));
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TabSoftwareSolutions()));
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
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () async{
                          Navigator.pop(context);
                          return await Scrollable
                              .ensureVisible(
                              dataKey4.currentContext!);
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
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              controller: _scrollController,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                        color: Colors.black54,
                        child: TabMenuBar(scaffoldState)),
                    constraints.maxWidth > 450 && constraints.maxWidth<800 ?
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Container(
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              constraints.maxWidth < 590 ?  Text(
                          'Lapron Technologies',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 50,
                                color: Colors.white,
                                letterSpacing: 8
                            ),
                          ) : Text(
                                'Lapron Technologies',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 60,
                                    color: Colors.white,
                                    letterSpacing: 8
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              constraints.maxWidth < 590 ? Text(
                                'We Innovate, We Develop!',
                                style: GoogleFonts.josefinSans(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 21,
                                    color: Colors.white,
                                    letterSpacing: 3
                                ),
                              ) : Text(
                                'We Innovate, We Develop!',
                                style: GoogleFonts.josefinSans(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 3
                                ),
                              ),
                              SizedBox(
                                height: 120,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) :
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
                                    fontSize: 60,
                                    color: Colors.white,
                                    letterSpacing: 8
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'We Innovate, We Develop!',
                                style: GoogleFonts.josefinSans(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 3
                                ),
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
                            key: dataKey3,
                              child: TabAboutUs()),
                          SizedBox(
                            height: 18,
                          ),
                          TabOurServices(),
                          SizedBox(
                            height: 18,
                          ),
                          TabSoftwareSolution(),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            key: dataKey4,
                              child: TabReachUs()),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                    TabBottomBar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
    );
  }
}
