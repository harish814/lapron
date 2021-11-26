import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle tabSubHeading = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 36,
  color: Colors.white,
  letterSpacing: 0.5,
);

TextStyle tabRichSubHeading = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 36,
  color: Colors.green,
  letterSpacing: 0.5,
);

TextStyle tabText = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: Colors.white,
);
TextStyle tabRichText = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: Colors.green,
);

TextStyle tabInfoText = GoogleFonts.josefinSans(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.white,
    letterSpacing: 2,
    height: 1.5
);

TextStyle tabRichInfoText = GoogleFonts.josefinSans(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.green,
    letterSpacing: 2,
    height: 1.5
);



TextStyle smallTabSubHeading = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 12,
  color: Colors.white,
  letterSpacing: 0.5,
);

TextStyle smallTabRichSubHeading = GoogleFonts.montserrat(
  fontWeight: FontWeight.w500,
  fontSize: 36,
  color: Colors.green,
  letterSpacing: 0.5,
);

TextStyle smallTabText = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w400,
  fontSize: 20,
  color: Colors.white,
);
TextStyle smallTabRichText = GoogleFonts.josefinSans(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: Colors.green,
);

TextStyle smallTabInfoText = GoogleFonts.josefinSans(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: Colors.white,
    letterSpacing: 2,
    height: 1.5
);

TextStyle smallTabRichInfoText = GoogleFonts.josefinSans(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: Colors.green,
    letterSpacing: 2,
    height: 1.5
);

class TabMenuBar extends StatelessWidget {
  TabMenuBar(this.ss);
  GlobalKey<ScaffoldState> ss;

  @override
  Widget build(BuildContext context) {
        return Container(
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
                        onPressed: () {
                          ss.currentState!.openEndDrawer();
                        },
                        child: Icon(Icons.menu,color: Colors.white,),
                        splashColor: Colors.greenAccent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}


class TabBottomBar extends StatelessWidget {
  const TabBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Lapron Technologies',
            style: tabSubHeading,
          ),
          SizedBox(
            height: 10,
          ),
          Container(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.0390625),
            width: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '© 2018 Lapron Technologies. Designed and Developed by',
                  textAlign: TextAlign.center,
                  style: tabText,
                ),
                TextButton(onPressed: (){}, child: Text(' Lapron Technologies',style: tabRichText,))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}