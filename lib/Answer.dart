import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return 
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              selectHandler();
            },
            child: Text(answerText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
            ),         
    );
  }
}
