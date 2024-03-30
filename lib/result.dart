import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;

  final VoidCallback resethandler;

  Result(this.resultScore, this.resethandler);

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore >= 75) {
      resultText = 'You are Owsome and innocent';
    } else if (resultScore >=65 ) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore >= 50) {
      resultText = 'You are.....Strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
           SizedBox( height: 10),
          
          ElevatedButton(
              child: Text('Restart Quiz'),
              onPressed: () {
                resethandler();
              }
              )
        ],
      ),
    );
  }
}
