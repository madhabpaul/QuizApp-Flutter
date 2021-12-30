import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String ansText;
  Answer(this.selectAnswer, this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          ansText,
        ),
        onPressed: selectAnswer,
      ),
    );
  }
}
