import 'package:flutter/material.dart';

class ReuseableText extends StatelessWidget {
  ReuseableText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: 1, softWrap: false, textAlign: TextAlign.left, style: style);
  }
}
