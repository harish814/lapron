import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle buttonTextStyle = GoogleFonts.workSans(fontSize: 14, color: Colors.white, letterSpacing: 1,fontWeight: FontWeight.w500);

TextStyle subHeading = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 44,
  color: Colors.white,
  letterSpacing: 0.5,
);

TextStyle richSubHeading = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 44,
  color: Colors.green,
  letterSpacing: 0.5,
);

TextStyle text = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w400,
  fontSize: 22,
  color: Colors.white,
);
TextStyle richText = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w600,
  fontSize: 22,
  color: Colors.green,
);

TextStyle infoText = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w400,
  fontSize: 22,
  color: Colors.white,
  letterSpacing: 2,
  height: 1.5
);

TextStyle richInfoText = GoogleFonts.josefinSans(
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: Colors.green,
    letterSpacing: 2,
    height: 1.5
);



class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Lapron Technologies',
            style: subHeading,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© 2018 Lapron Technologies. Designed and Developed by',
                style: text,
              ),
              TextButton(onPressed: (){}, child: Text(' Lapron Technologies',style: richText,))
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

