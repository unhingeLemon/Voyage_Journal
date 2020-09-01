import 'package:flutter/material.dart';
import 'package:voyage_journal/components/greetings.dart';
import 'package:voyage_journal/components/card.dart';
import 'package:intl/intl.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {




  List entries = [
    {'title': 'Sample Title1',
      'note' : 'is simply dummy text of the printing and types type setting industry. Lorem Ipsum has',
      'date': 'September 1 2020',
      'time': '3:00 pm',
    },
    {'title': 'Sample Title2',
      'note' : 'Today is the day, the day that will come on that day. This day, must be the day.Today is the day, the day that will come on that day. This day, must be the day',
      'date': 'August 30 2020',
      'time': '3:00 pm',
    },
    {'title': 'Sample Title3',
      'note' : 'is simply dummy text of the printing and types type setting industry. Lorem Ipsum has',
      'date': 'August 31 2020',
      'time': '3:00 pm',
    },
    {'title': 'Sample Title4',
      'note' : 'is simply dummy text of the printing and types type setting industry. Lorem Ipsum has',
      'date': 'August 30 2020',
      'time': '3:00 pm',
    },
    {'title': 'Sample Title5',
      'note' : 'is simply dummy text of the printing and types type setting industry. Lorem Ipsum has',
      'date': 'August 30 2020',
      'time': '3:00 pm',
    },
  ];

  bool isToday = false;

  void isTodayf(){
    for(var entry in entries) {
      if(entry['date'] == DateFormat('MMMM dd yyyy').format(DateTime.now()).toString()) {
        setState(() {
          setState(() {
            isToday = true;
          });
        });
      }
    }
  }


@override
  void initState() {
    isTodayf();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(

          children: [
            Greetings(
              padding: EdgeInsets.only(top:30,left:30,right: 30),
              text: 'Goodmorning Mark',
              textAlign: TextAlign.left,
            ),
            Greetings(
              padding: EdgeInsets.only(top: 20,left:70,right:70,bottom: 30),
              text: 'You always pass failure on the way to success. -Mickey Rooney',
              textAlign: TextAlign.center,
            ),

            if (isToday) Greetings(
              padding: EdgeInsets.only(top: 20,left:30,right:10),
              text: 'Today',
            ),



            for(var entry in entries) if(entry['date'] == DateFormat('MMMM dd yyyy').format                (DateTime.now()).toString())
            CardEntry(
            title: entry['title'],
            note: entry['note'],
            time: entry['time']
           ),



            Greetings(
              padding: EdgeInsets.only(top: 20,left:30,right:10),
              text: 'Yesterday',
            ),
            for(var entry in entries)CardEntry(
                title: entry['title'],
                note: entry['note'],
                time: entry['time']
            )

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


