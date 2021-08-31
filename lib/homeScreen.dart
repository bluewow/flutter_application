import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.amber[900]),
        backgroundColor: Color(0xFFF7F1E8),
        title: Text(
          'mayple',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arvo',
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/mission.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/docker-logo.png'),
                  backgroundColor: Color(0xFFF7F1E8),
                ),
              ],
              accountName: Text(
                'hong-gil-dong',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'xxx@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
              onDetailsPressed: () {
                print('test');
              },
              decoration: BoxDecoration(
                color: Color(0xFFF7F1E8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15.0),
              color: Color(0xFFF7F1E8),
              child: Column(
                children: [
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
            SizedBox(
              height: 12.0,
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
                        child: Builder(
                          builder: (ctx) {
                            return FloatingActionButton(
                              elevation: 0.0,
                              child: Icon(Icons.add),
                              onPressed: () {
                                ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                                  content: Text('hello'),
                                ));
                                print('clicked');
                              },
                            );
                          },
                        ),
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: FloatingActionButton(
                            child: Icon(Icons.home),
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "This is Center Short Toast",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.blue,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
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
