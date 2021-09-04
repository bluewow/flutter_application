import 'package:flutter/material.dart';
import 'package:flutter_application/constant/Constant.dart';
import 'package:flutter_application/homeScreen/model/TextBoxModel.dart';

class ReadScreen extends StatelessWidget {
  const ReadScreen({Key? key}) : super(key: key);

  static const routeName = '/readScreen';

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)!.settings.arguments as TextBoxModel;

    return Scaffold(
      backgroundColor: Color(BASE_COLOR),
      appBar: AppBar(
        title: Text('ReadMore'),
        backgroundColor: Color(BASE_COLOR),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            SizedBox(height: 18.0),
            Text(
              model.message,
              style: TextStyle(color: Colors.white38, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
