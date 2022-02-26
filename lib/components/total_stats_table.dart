import 'package:flutter/material.dart';
import 'package:telephonesimulation/utilities/constants.dart';

class TotalStatsTable extends StatefulWidget {
  const TotalStatsTable({Key? key}) : super(key: key);

  @override
  _TotalStatsTableState createState() => _TotalStatsTableState();
}

class _TotalStatsTableState extends State<TotalStatsTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: const [
          TableRow(children: [
            Text(
              'Total',
              style: labels,
              textAlign: TextAlign.center,
            ),
            Text(
              'Success',
              style: labels,
              textAlign: TextAlign.center,
            ),
            Text(
              'Delayed',
              style: labels,
              textAlign: TextAlign.center,
            ),
          ]),
          TableRow(children: [
            Text(
              '0',
              textAlign: TextAlign.center,
              style: attributeStyle,
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: attributeStyle,
            ),
            Text(
              '0',
              textAlign: TextAlign.center,
              style: attributeStyle,
            ),
          ])
        ],
      ),
    );
  }
}
