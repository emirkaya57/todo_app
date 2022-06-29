import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Text(
        'todo App',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 60,
          fontWeight: FontWeight.w100,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
