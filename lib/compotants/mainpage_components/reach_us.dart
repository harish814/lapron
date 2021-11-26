import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lapron/hover/hover_extention.dart';

import '../componants.dart';

class ReachUs extends StatelessWidget {
  const ReachUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Text(
            'Reach Us',
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
            height: 95,
          ),

          Text(
            'Our Address',
            style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Shirpur, Dhule, Maharashtra - 425405",
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Akurdi, Pimpri Chinchwad, Pune, Maharashtra - 411044",
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),

          SizedBox(
            height: 50,
          ),

          Text(
            'Email us',
            style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "contact@lapron.com",
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "hr@lapron.com",
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),

          SizedBox(
            height: 90,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
              SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white30,
              ).moveOnHover,
            ],
          ),
        ],
      ),
    );
  }
}
