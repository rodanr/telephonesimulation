// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'calls_progress_table.dart';
import 'waiting_list_table.dart';
import 'status_table.dart';

class MiddleTables extends StatelessWidget {
  const MiddleTables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(flex: 2, child: StatusTable()),
        Expanded(flex: 4, child: CallsProgressTable()),
        Expanded(flex: 4, child: WaitingListTable()),
      ],
    );
  }
}
