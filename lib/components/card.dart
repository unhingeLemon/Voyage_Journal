import 'package:flutter/material.dart';

class CardEntry extends StatelessWidget {

  CardEntry({this.title,this.note,this.time});

  final String title;
  final String note;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('CLICKED A CARD');
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
    );
  }
}
