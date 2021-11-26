import 'package:flutter/material.dart';

class TranslateHover extends StatefulWidget {
  final Widget child;
  const TranslateHover({Key? key, required this.child}) : super(key: key);

  @override
  _TranslateHoverState createState() => _TranslateHoverState();
}

class _TranslateHoverState extends State<TranslateHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0,-10,0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,

      ),
    );
  }
  _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
