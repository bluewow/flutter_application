import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('second button'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
