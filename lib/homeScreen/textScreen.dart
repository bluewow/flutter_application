import 'package:flutter/material.dart';
import 'package:flutter_application/constant/Constant.dart';

Table textScreen() {
  return Table(
    children: [
      TableRow(
        children: [
          _tableRowData('119K+', 'Subscribers'),
          _tableRowData('40+', 'Videos'),
        ],
      ),
      TableRow(
        children: [
          _tableRowData('30+', 'Projects'),
          _tableRowData('13K+', 'Stars'),
        ],
      ),
    ],
  );
}

Row _tableRowData(String data1, String data2) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
        child: Text(
          data1,
          style: TextStyle(
              color: Colors.yellow,
              fontFamily: SECOND_FONT,
              fontWeight: FontWeight.w700),
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Text(
        data2,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
