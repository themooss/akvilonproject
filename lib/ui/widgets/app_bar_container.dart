import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
