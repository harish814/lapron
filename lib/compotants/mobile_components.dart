import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileMenuBar extends StatelessWidget {
  MobileMenuBar(this.ss);
  GlobalKey<ScaffoldState> ss;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.009765625,
          bottom: MediaQuery.of(context).size.width * 0.009765625,
          right: MediaQuery.of(context).size.width * 0.006765625,
          left: MediaQuery.of(context).size.width * 0.058765625),
      child: Row(
        children: [
          Flexible(
            child: Container(
              alignment: Alignment.centerLeft,
              child: RichText(
                  text: TextSpan(
                      text: 'LT',
                      style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                      children: <TextSpan>[
                    TextSpan(
                      text: '.',
                      style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w500,
                          fontSize: 40,
                          color: Colors.green),
                    )
                  ])),
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
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
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
