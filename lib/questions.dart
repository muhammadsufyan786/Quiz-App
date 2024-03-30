import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(11), //Outside space from Container
      child: Text(questionText,style: TextStyle(fontSize:33),
      textAlign: TextAlign.center),
    );
  }
}
