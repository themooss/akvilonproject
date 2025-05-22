import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final double width;

  final double height;

  final Widget child;

  final EdgeInsets? margin;

  final EdgeInsets? padding;

  final BoxDecoration? decoration;

  const BaseContainer({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.margin,
    this.padding,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      child: child,
    );
  }
}
