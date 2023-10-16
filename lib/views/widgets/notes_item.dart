import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  /*List<Color> colors =[
    Colors.amberAccent,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.greenAccent,
  ] ;*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0,left: 8.0),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const ListTile(
              isThreeLine: true,
              title: Text(
                  'Flutter Tip',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top:8.0),
                child: Text(
                  'This is a subtitle build by Ammar Yasser',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),),
              ),
              trailing: Icon(
                Icons.delete,
                size: 36,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 8.0),
              child: Text('${DateTime.now()}', style: const TextStyle(
                color: Colors.black45
              ),),
            )
          ],
        ),
      ),
    );
  }
}
