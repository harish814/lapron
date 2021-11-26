import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapron/compotants/componants.dart';
import 'package:lapron/compotants/tabComponents.dart';

class MobileOurServices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
        return Container(
          child: Column(
            children: <Widget>[
              Text(
                'OUR SERVICES',
                style: tabSubHeading,
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                    text: 'We are lucky to',
                    style: tabText,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' service',
                        style: tabRichInfoText,
                      ),
                      TextSpan(
                        text: ' people like you',
                        style: tabInfoText,
                      )
                    ]
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 120,
                child: Divider(
                  thickness: 1.5,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white30,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'iOS Development',
                              style: GoogleFonts.tinos(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'We design and develop stunning apps in iOS for smartphones, tablets etc. We provide high quality custom apps for mobile devices that will enhance the user experience.',
                              style: tabInfoText,
                              textAlign: TextAlign.justify,
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                'Read more...',
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
                        height: 50,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white30,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Android Development',
                              style: GoogleFonts.tinos(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'We offer innovative and dynamic applications for Android devices. Using creative design and cutting edge technologies our android app developers deliver some of the best android apps.',
                              style: tabInfoText,
                              textAlign: TextAlign.justify,
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                'Read more...',
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
                        height: 50,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white30,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Web Development',
                              style: GoogleFonts.tinos(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'We provide resposive web applications with a beautiful UI/UX. We strive to make sure the service we deliver is not just a complete high quality service but also an innovative solution.',
                                  style: tabInfoText,
                                  textAlign: TextAlign.justify,
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'Read more...',
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white30,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Product Development',
                              style: GoogleFonts.tinos(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'The creation of products with new or different characteristics that offer new or additional benefits to the cutomer. We focus on adopting innovative techniques that provides constant value addition for the customers makes us the preferred choice for enterprises and businesses.',
                                  style: tabInfoText,
                                  textAlign: TextAlign.justify,
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'Read more...',
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
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white30,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'UI and UX with Advanced Research',
                              style: GoogleFonts.tinos(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "We've got a user-centered application design philosophy hat guides our every creative move. Our app design deparment is specialized in decoding the user's wants and needs making for well-informed UI and UX decisions.",
                              style: tabInfoText,
                              textAlign: TextAlign.justify,
                            ),
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                'Read more...',
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
                        height: 50,
                      ),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white30,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Support Services',
                              style: GoogleFonts.tinos(
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'The most important factor for us a happy customer. We make sure that your product is bug-free and it is working smoothly as per your requirement. Our team is ready to help our customers for all your queries, concerns, feedback, review, etc. regarding the product. We believe in long term business relationship to help achieve your business goals.',
                                  style: infoText,
                                  textAlign: TextAlign.justify,
                                ),
                                TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'Read more...',
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
