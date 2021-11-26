import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tabComponents.dart';

class MobileReachUs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
      child: Column(
        children: [
          Text(
            'Reach Us',
            style: tabSubHeading,
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
            height: 45,
          ),

          Text(
            'Our Address',
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Shirpur, Dhule, Maharashtra - 425405",
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Akurdi, Pimpri Chinchwad, Pune, Maharashtra - 411044",
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),

          SizedBox(
            height: 50,
          ),

          Text(
            'Email us',
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "contact@lapron.com",
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "hr@lapron.com",
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),

          SizedBox(
            height: 90,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
            width: 900,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09953125,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09953125,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09953125,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                  ],
                ),
                SizedBox(
                    height: 20
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09953125,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.09953125,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
