import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  final String _text;

  TextDisplay(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Text(
        _text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
