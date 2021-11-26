import 'package:flutter/material.dart';
import 'package:lapron/main_page.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
          background: Container(color: Colors.blueGrey),
      ),
      home: MainPage(),
    );
  }
}

