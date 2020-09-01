import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  Greetings({this.padding, this.text,this.textAlign,this.fontSize});

  final EdgeInsets padding;
  final String text;
  final TextAlign textAlign;
  final double fontSize;


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: padding,
      child: Text(text,
        style: TextStyle(
          fontFamily: 'Rubic',
          fontSize: fontSize != null ? fontSize : 20.0,
          color: Color(0xFF747474),
          height: 1,
        ),
        textAlign: textAlign,

      ),
    );
  }
}
