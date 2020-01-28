import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddaptiveButton extends StatelessWidget {
  AddaptiveButton({this.text, this.handler});

  final String text;
  final Function handler;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              'Choose Date',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              'Choose Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          );
  }
}
