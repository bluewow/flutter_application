import 'package:flutter/material.dart';
import 'package:flutter_application/constant/Constant.dart';
import 'package:flutter_application/homeScreen/model/TextBoxModel.dart';
import 'textScreen.dart';
import 'topScreen.dart';
import 'projecScreen.dart';
import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/homeScreen';

  @override
  Widget build(BuildContext context) {
    List<TextBoxModel> dummy = [
      TextBoxModel(DUMMY_TITLE1, DUMMY_CONTENTS1),
      TextBoxModel(DUMMY_TITLE2, DUMMY_CONTENTS2),
      TextBoxModel(DUMMY_TITLE3, DUMMY_CONTENTS3)
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(BASE_COLOR),
        appBar: AppBar(
          backgroundColor: Color(BASE_COLOR),
        ),
        drawer: drawer(context),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topScreenDisplay(context),
                SizedBox(height: HOME_INTERVAL),
                textScreen(),
                SizedBox(height: HOME_INTERVAL),
                Text(
                  'My projects',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                SizedBox(height: HOME_INTERVAL),
                projectScreen(context, dummy),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
