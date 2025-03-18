import 'package:flutter/material.dart';
import 'package:tuan3/pages/components.dart';
import 'package:tuan3/pages/home_page.dart';
import 'package:tuan3/pages/text_detail.dart';

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
      home: HomePage(),
      routes: {
        'home_page': (context) => HomePage(),
        'components': (context) => Components(),
        'text_detail': (context) => TextDetail(),
      },
    );
  }
}
