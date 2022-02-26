// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText, hintText;
  final Function onChangedFunc;
  const MyTextField(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.onChangedFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: 150,
      height: 50,
      child: TextField(
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            labelStyle: TextStyle(
              color: Colors.black,
              letterSpacing: 1.0,
            ),
            filled: true,
            fillColor: Colors.blue.shade100,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: const BorderSide(color: Colors.black, width: 2.0),
            ),
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          ),
          onChanged: (value) {
            onChangedFunc(value);
          }),
    );
  }
}
