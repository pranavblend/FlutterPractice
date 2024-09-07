import 'package:flutter/material.dart';
import 'package:newwidgets/Datepicker/Datepicker.dart';
import 'package:newwidgets/Datepicker/sharedtaskat.dart';
import 'package:newwidgets/Listviewbuilder/Example2.dart';
import 'package:newwidgets/Listviewbuilder/Listviewbulder.dart';
import 'package:newwidgets/Listviewbuilder/testnike.dart';
import 'package:newwidgets/To%20DO.dart';
import 'package:newwidgets/To%20do%20with%20shared.dart';
import 'package:newwidgets/api/Api2.dart';
import 'package:newwidgets/api/Apipractice.dart';
import 'package:newwidgets/drawer.dart';
import 'package:newwidgets/payment%20successfukl.dart';
import 'package:newwidgets/widget_animation.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Api2ui()
    );
  }
}

