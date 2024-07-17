import 'package:flutter/material.dart';

class TranslateOnHover extends StatefulWidget {
  const TranslateOnHover({super.key, required this.child});
  final Widget child;

  @override
  State<TranslateOnHover> createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -5, 0);
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => mouseEnter(true),
      onExit: (e) => mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: isHovering ? hoverTransform : nonHoverTransform,
        child: widget.child,
      ),
    );
  }

  void mouseEnter(bool hovering) {
    setState(() {
      isHovering = hovering;
    });
  }
}
