import 'package:flutter/material.dart';
import 'package:flutter_application/readScreen/ReadScreen.dart';
import 'package:flutter_application/homeScreen/HomeScreen.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        ReadScreen.routeName: (_) => const ReadScreen(),
      },
    );
  }
}
