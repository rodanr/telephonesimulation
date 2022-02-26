// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telephonesimulation/utilities/constants.dart';
import 'package:telephonesimulation/components/my_text_field.dart';

class InputBar extends StatelessWidget {
  const InputBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        MyTextField(
          labelText: "From",
          hintText: "From",
          onChangedFunc: () {},
        ),
        MyTextField(
          labelText: "To",
          hintText: "To",
          onChangedFunc: () {},
        ),
        Container(
          width: 150,
          height: 50.0,
          margin: EdgeInsets.all(20.0),
          child: Card(
            child: ListTile(
              leading: Icon(Icons.call),
              title: Text(
                "Call",
                style: labels,
              ),
              tileColor: Colors.lightGreen,
            ),
          ),
        )
      ],
    );
  }
}
