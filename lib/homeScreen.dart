import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(36.0, 36, 36.0, 0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
                topLeft: Radius.circular(18.0),
                topRight: Radius.circular(18.0),
              ),
              child: Container(
                padding: EdgeInsets.all(15.0),
                color: Color(0xFFF7F1E8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_box,
                                color: Colors.deepOrangeAccent[400],
                              ),
                              Text(
                                'mayple',
                                style: TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Arvo',
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print('action');
                          },
                          icon: Icon(
                            Icons.menu,
                            size: 28.0,
                            color: Colors.deepOrangeAccent[400],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Find your industry\'s top vetted marketing experts',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('docker-logo.png'),
                      height: 200.0,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(28.0, 16.0, 28.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stefan Garlson',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Text(
                                '4.8',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Icon(Icons.star,
                                  size: 20,
                                  color: Colors.deepOrangeAccent[400]),
                              Icon(Icons.star,
                                  size: 20,
                                  color: Colors.deepOrangeAccent[400]),
                              Icon(Icons.star,
                                  size: 20,
                                  color: Colors.deepOrangeAccent[400]),
                              Icon(Icons.star,
                                  size: 20,
                                  color: Colors.deepOrangeAccent[400]),
                              Icon(Icons.star_half,
                                  size: 20,
                                  color: Colors.deepOrangeAccent[400]),
                            ],
                          ),
                        ],
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: FloatingActionButton(
                          elevation: 0.0,
                          child: Icon(Icons.add),
                          onPressed: () {
                            print('clicked');
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Table(
              border: TableBorder.all(
                width: 1.0,
                style: BorderStyle.solid,
                color: Colors.grey.shade200,
              ),
              children: [
                TableRow(
                  children: [
                    textBox('marketing expertise:', 'Tech expert'),
                    textBox('experence', '8 years'),
                  ],
                ),
                TableRow(
                  children: [
                    textBox('wored with', 'Jolt, Monday, Salesforce'),
                    textBox('avg.increase in sales', '+146%'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding textBox(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(color: Color(0xFF1C454F), fontSize: 10.0),
          ),
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
