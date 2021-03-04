import 'package:flutter/material.dart';
import 'package:Voyage/components/greetings.dart';
import 'package:Voyage/components/card.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  List entries = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Greetings(
            padding: EdgeInsets.only(top:30,left:30,right: 30),
            text: 'Goodmorning Mark',
            textAlign: TextAlign.left,
          ),
            Greetings(
              padding: EdgeInsets.only(top: 20,left:70,right:70,bottom: 20),
              text: 'You always pass failure on the way to success. -Mickey Rooney',
              textAlign: TextAlign.center,
            ),

            new Expanded(
              child: new ListView.builder(
                itemCount: entries.length,
                itemBuilder: (BuildContext context,int index) {
                 return
                   CardEntry(
                     title: entries[index]['title'],
                      note: entries[index]['note'],
                      time: entries[index]['time'],
                      date:entries[index]['date'],
                   );
                }
              ),
            ),
          ],
        ),
      ),


      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.red),

        child: Padding(
          padding:  EdgeInsets.only(bottom: 10),
          child: FloatingActionButton(
            backgroundColor: Color(0xFFB46EB1),
            onPressed: () {
              Navigator.pushNamed(context, '/inputPage');
            },
            child: Icon(Icons.add),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            elevation: 20,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


    );
  }
}


