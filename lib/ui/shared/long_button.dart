import 'package:flutter/material.dart';
class LongButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function onPressed;
  LongButton({this.color, this.onPressed, this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
          child: RaisedButton(
        color: color,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 48),
        child: Text(
          "$title",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        onPressed: onPressed,
      ),
    );
  }
}
