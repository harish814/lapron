import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../componants.dart';

class SoftwareSolution extends StatelessWidget {
  const SoftwareSolution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Text(
            'SOFTWARE\nSOLUTIONS',
            style: subHeading,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 120,
            child: Divider(
              thickness: 1.5,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(width: 3, color: Colors.green),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white30,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Enterprise Mobility',
                          style: GoogleFonts.tinos(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Enterprise mobility is the growing trend of businesses to offer remote working options. End-to-end enterprise mobility solution empowers business with scalability and security. We offer our mobility solutions to multiple industry verticals.',
                          style: infoText,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            '...Read more',
                            style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                letterSpacing: 2,
                                height: 1.5
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 360,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white30,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Web Platform Solutions',
                          style: GoogleFonts.tinos(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'The Web Transition Is Coming and Transitioning from web 2.0 to the 3.0 version is going to likely go unnoticed by most people. The applications we develop will include interactive solutions from the advanced form of Web 2.0 to the beginning stages of the new Web 3.0',
                          style: infoText,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            '...Read more',
                            style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                letterSpacing: 2,
                                height: 1.5
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 360,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white30,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'DevOps',
                          style: GoogleFonts.tinos(
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'We help businesses to build flexible and reliable products that can seamlessly handle volume and functionality growth. We take advantage of the DevOps approach to enable the Continuous Deployment of software to our clients, bridging the gap between agile software development and operation.',
                          style: infoText,
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            '...Read more',
                            style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                letterSpacing: 2,
                                height: 1.5
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
