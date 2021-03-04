
import 'package:flutter/material.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String body;
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:  SafeArea(
        child: Column(
          children: [
            TextField(
              maxLength: 30,
              onChanged: (value){
                setState(() {
                  title = value;
                });
              },
              decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
            ),
            TextField(
              maxLines: 9,
              onChanged: (value){
                setState(() {
                  body = value;
                });
              },
              decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
            ),
            FlatButton(
              onPressed: (){
                print(title);
                print(body);

                Navigator.pop(context);
              },
              child: Text('submit'),
            )
          ],
        ),
      ),
    );;
  }
}

