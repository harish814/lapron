import 'package:flutter/material.dart';
import 'package:lapron/hover/translate_hover.dart';
import 'dart:html' as html;

extension HoverExtention on Widget{
  static final appContainer = html.window.document.getElementById('app-container');

  Widget get moveOnHover {
    return TranslateHover(
      child: this,
    );
  }

}