import 'package:flutter/material.dart';
import 'package:flutter_application/constant/Constant.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: Container(
      color: Color(BASE_COLOR),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _avatarDisplay(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _textPiece('Residence:', 'Bangladesh'),
                _textPiece('City:', 'Dhaka'),
                _textPiece('Age:', '22'),
              ],
            ),
          ),
          _skillsDisplay(),
          _codingDisplay(),
        ],
      ),
    ),
  );
}

Padding _codingDisplay() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: Colors.white10),
        SizedBox(height: 15.0),
        Container(
          child: Text(
            'Coding',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        )
      ],
    ),
  );
}

Padding _skillsDisplay() {
  return Padding(
    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: Colors.white10),
        SizedBox(height: 15.0),
        Container(
          child: Text(
            'Skills',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        )
      ],
    ),
  );
}

Container _avatarDisplay() {
  return Container(
    padding: EdgeInsets.only(left: 50, right: 50),
    color: Color(SECOND_COLOR),
    child: Column(children: [
      SizedBox(height: 20.0),
      CircleAvatar(
        backgroundImage: AssetImage('images/character.png'),
        radius: 45.0,
      ),
      SizedBox(height: 15.0),
      Text(
        'Docker',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        'Flutter Developer & Founder of The Flutter Way',
        style: TextStyle(
          color: Colors.white24,
          fontSize: 16.0,
        ),
      ),
      SizedBox(height: 20.0),
    ]),
  );
}

Container _textPiece(String data1, String data2) {
  return Container(
    padding: EdgeInsets.all(4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data1,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          data2,
          style: TextStyle(
            color: Colors.white38,
          ),
        ),
      ],
    ),
  );
}
