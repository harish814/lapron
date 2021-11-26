import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapron/compotants/componants.dart';
import 'package:lapron/screenSizePages/pcPages/software_solutions.dart';

import '../../main_page.dart';

class ServicesPage extends StatelessWidget {

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
        Scaffold(floatingActionButton: FloatingActionButton(
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
                              'Our Services',
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
                              'Sharing knowledge, Accepting challenge',
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
                                child: Image.asset('images/ux.jpg',fit: BoxFit.cover,),
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
                                          text: 'UI AND UX WITH ADVANCED RESEARCH',
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
                                        'Product development is like finding the right key for the lock. With a fine understanding of an idea and its application in the market, it’s very important to incorporate all these elements on a single platform. All the products are developed on open source thus, enabling the users to customize it as per their choice. Engineering experts at Lapron Technologies, fabricate the best solution by adopting the latest technology available. Lapron Technologies also engineers software platforms for wide range of customers. Our approach on adopting innovative techniques that provides constant value addition for the customers makes us the preferred choice for enterprises and businesses.',
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
                                            text: 'PRODUCT DEVELOPMENT',
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
                                        'Product development is like finding the right key for the lock. With a fine understanding of an idea and its application in the market, it’s very important to incorporate all these elements on a single platform. All the products are developed on open source thus, enabling the users to customize it as per their choice. Engineering experts at Lapron Technologies, fabricate the best solution by adopting the latest technology available. Lapron Technologies also engineers software platforms for wide range of customers. Our approach on adopting innovative techniques that provides constant value addition for the customers makes us the preferred choice for enterprises and businesses.',
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
                                child: Image.asset('images/ux1.jpg',fit: BoxFit.cover,),
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
                                child: Image.asset('images/ux2.jpg',fit: BoxFit.cover,),
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
                                            text: 'PRODUCT IMPLEMENTATION',
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
                                        'With enterprises needing to ensure immediate returns of investment in technology with the lowest total cost of ownership, Lapron Technologies facilitates end to end implementation of various enterprise products that include Microsoft technologies and office 365 suite, salesforce CRM and solutions built on force platform and developing enterprise solutions for accounting packages like SAGE, Quickbooks and XERO to full blown ERP based solutions for Oracle enterprise business suite. Our services include end to end process mapping, installation and training with custom development of these enterprise products.',
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
                                padding: EdgeInsets.only(top: w * 0.009765625),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'SUPPORT SERVICES',
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
                                        'An after service is a must. Lapron Technologies believes in providing support to its client even after the product is deployed. We provide 24*7 technical assistance with hassle free communication to our domain experts.  Our support is a combination of automated agents which handle L1 support query to our highly trained and domain expert agents who provide advanced support to complement our machine agents.',
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
                                child: Image.asset('images/ux3.jpg',fit: BoxFit.cover,),
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
                                child: Image.asset('images/ux4.jpg',fit: BoxFit.cover,),
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
                                            text: 'DELIVERING PROJECTS FASTER',
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
                                        'Our team combines the best technologies, engineering practices and unique augmentastic to facilitate new and more efficient way of doing business. We help organizations, businesses with their digital transformation and so that they can manage their culture effectively engaging their employees from day one to ensure success.',
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
