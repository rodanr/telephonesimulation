// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telephonesimulation/models/data.dart';
import 'package:telephonesimulation/utilities/constants.dart';
import 'package:provider/provider.dart';

class StatusTable extends StatelessWidget {
  const StatusTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Status",
          style: labels,
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(
                children: [
                  Text(
                    "t0",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t0'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t1",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t1'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t2",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t2'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t3",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t3'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t4",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t4'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t5",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t5'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t6",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t6'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Text(
                    "t7",
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    context.watch<UserData>().userStatus['t7'].toString(),
                    style: attributeStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
