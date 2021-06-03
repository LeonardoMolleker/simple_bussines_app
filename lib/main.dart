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
      home: CardPage(
        name: "Leonardo Molleker",
        position: "College Trainee",
        srcImage: "lib/src/assets/profile.jpg",
        number: "+54 9 249 4208051",
        mail: "leonardo.molleker@globant.com",
      ),
    );
  }
}
