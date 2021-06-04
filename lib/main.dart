import 'package:flutter/material.dart';
import 'src/pages/card_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple bussiness card app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardPage(),
    );
  }
}
