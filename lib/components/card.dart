import 'package:flutter/material.dart';
import 'package:Voyage/components/greetings.dart';

class CardEntry extends StatelessWidget {

  CardEntry({
    this.title,
    this.note,
    this.time,
    this.date});

  final String title;
  final String note;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Greetings(
          padding: EdgeInsets.only(top: 20,left: 30),
          text: date,
        ),
        GestureDetector(
        onTap: (){
          print('CLICKED A CARD' + title);
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
          height: 125,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
            color: Colors.grey,
            offset: Offset(2.5, 2.5), //(x,y)
            blurRadius: 6.0,
              ),
            ],
            color: Color(0xFFFFECFF),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                child: Text(title,style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF464646),
                 ),
                ),
              ),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(note,
                    style: TextStyle(

                      fontSize: 15,
                      color: Color(0xFF464646),

                  ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                child: Text(time,
                  style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF464646),
                ),
                ),
              ),
            ],

          ),
        ),
      ),]
    );
  }
}
