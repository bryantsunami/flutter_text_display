import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final fieldText = TextEditingController();

  final Function _setText;

  TextControl(this._setText);

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
