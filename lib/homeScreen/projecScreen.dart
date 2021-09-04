import 'package:flutter/material.dart';
import 'package:flutter_application/constant/Constant.dart';
import 'package:flutter_application/homeScreen/model/TextBoxModel.dart';
import 'package:flutter_application/readScreen/ReadScreen.dart';

Expanded projectScreen(BuildContext context, List<TextBoxModel> dummy) {
  return Expanded(
    child: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => ListTile(
        title: _writeBox(context, dummy[index]),
      ),
    ),
  );
}

Container _writeBox(BuildContext context, TextBoxModel dummy) {
  return Container(
    height: 200,
    color: Color(SECOND_COLOR),
    child: Container(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              dummy.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
              ),
            ),
          ),
          Container(
            child: Text(
              dummy.message,
              overflow: TextOverflow.clip,
              maxLines: 3,
              style: TextStyle(
                color: Colors.white30,
                fontSize: 17.0,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ReadScreen.routeName,
                  arguments: TextBoxModel(dummy.title, dummy.message));
            },
            child: Container(
              child: Row(
                children: [
                  Text(
                    'Read More',
                    style: TextStyle(
                      color: Colors.yellow[600],
                      fontSize: 17.0,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.yellow[600],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
