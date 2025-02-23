import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/home_ui.dart';

void main() {
  runApp(const ThaiHotLineApp());
}

class ThaiHotLineApp extends StatefulWidget {
  const ThaiHotLineApp({super.key});

  @override
  State<ThaiHotLineApp> createState() => _ThaiHotLineAppState();
}

class _ThaiHotLineAppState extends State<ThaiHotLineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
    );
  }
}
