import 'package:flutter/material.dart';
import 'package:lapron/screenSizePages/mobilePages/mobile_main_page.dart';
import 'package:lapron/screenSizePages/pcPages/pc_main_page.dart';
import 'package:lapron/screenSizePages/tabPages/tab_main_page.dart';

final dataKey = new GlobalKey();
final dataKey2 = new GlobalKey();

final dataKey3 = new GlobalKey();
final dataKey4 = new GlobalKey();

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.maxWidth);
          if(constraints.maxWidth > 450 && constraints.maxWidth <= 1000){
            return TabMainPage();
          }
          else if(constraints.maxWidth <= 450){
            return MobileMainPage();
          }
          return PcMainPage();
    });
  }
}
