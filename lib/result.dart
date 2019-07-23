import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;


  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if(resultScore <= 30){
      resultText = 'You are awesome and innocent';
    } else if( resultScore <= 40){
      resultText = 'please many read book!';
    } else if ( resultScore <= 50 ){
      resultText = 'is not enough';
    } else {
      resultText = 'you is good!';
    }

    return resultText;
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget>[ Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz'), 
            onPressed: resetHandler,
            color: Colors.orange,
            ),
        ],
      ),
    );
  }
}