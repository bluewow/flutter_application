import 'package:flutter/material.dart';

Stack topScreenDisplay(BuildContext context) {
  return Stack(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'images/satellite.jpg',
          height: 150,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
        child: Text(
          'Discover my Amazing',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
        child: Text(
          'Art Space!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
        child: Text(
          'I build Chat app with dark and light',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    ],
  );
}
