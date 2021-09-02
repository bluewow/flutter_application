import 'package:flutter/material.dart';
import 'package:flutter_application/SecondScreen.dart';

import 'homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mission',
      initialRoute: '/',
      routes: {
        '/2': (context) => SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
