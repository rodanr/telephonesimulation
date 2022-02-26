// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/data.dart';
import 'components/middle_tables.dart';
import 'components/total_stats_table.dart';
import 'components/input_bar.dart';
import 'package:desktop_window/desktop_window.dart';

String userToChange = "";
void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserData())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Future setFixedWindowSize() async {
  await DesktopWindow.setMinWindowSize(Size(1024, 768));
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    setFixedWindowSize();
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Telephone Simulation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.blueGrey),
      ),
      home: Scaffold(
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(children: [
            InputBar(),
            MiddleTables(),
            SizedBox(
              height: 100.0,
              width: 10.0,
            ),
            Align(alignment: Alignment.bottomCenter, child: TotalStatsTable()),
          ]),
        )),
      ),
    );
  }
}
