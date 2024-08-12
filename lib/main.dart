import 'package:flutter/material.dart';
import 'package:newwidgets/Datepicker/Datepicker.dart';
import 'package:newwidgets/Listviewbuilder/Example2.dart';
import 'package:newwidgets/Listviewbuilder/Listviewbulder.dart';
import 'package:newwidgets/drawer.dart';
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
      home: const Animatedui()
    );
  }
}

