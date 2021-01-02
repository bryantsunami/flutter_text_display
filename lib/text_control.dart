import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  final Function _setText;

  TextControl(this._setText);

  @override
  _TextControlState createState() => _TextControlState(_setText);
}

class _TextControlState extends State<TextControl> {
  final fieldText = TextEditingController();

  final Function _setText;

  _TextControlState(this._setText);

  void onSubmit() {
    _setText(fieldText.text);
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              textAlign: TextAlign.center,
              controller: fieldText,
              onEditingComplete: onSubmit,
            ),
          ),
          RaisedButton(
            child: Text('save new text'),
            onPressed: onSubmit,
          ),
        ].toList(),
      ),
    );
  }
}
