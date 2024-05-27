

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_6/pages/home.dart';

class RoomListPage extends StatefulWidget {

  

  const RoomListPage({super.key});

  @override
  State<RoomListPage> createState() => _RoomListPageState();
}

class _RoomListPageState extends State<RoomListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Room List',style: TextStyle(color: Colors.white),
      ),backgroundColor: Colors.orange)
      
      ,body: Column(children: [
        Card(
          child: ListTile(
            trailing: Icon(Icons.arrow_circle_up_sharp),
            title: Text('King Room',style: TextStyle(color: Colors.orange) ,),
            subtitle: Text('A room with a king sized bed',style: TextStyle(color: Colors.black),),
            leading: Image.asset('assets/IMG_single.JPG'),
          ),
        )
 ,        Card(
          child: ListTile(
            trailing: Icon(Icons.arrow_circle_up_sharp),
            title: Text('Double Room',style: TextStyle(color: Colors.orange) ,),
            subtitle: Text('A room assigned to two people',style: TextStyle(color: Colors.black),),
            leading: Image.asset('assets/IMG_double.JPG'),

    )),
    
     Card(
          child: ListTile(
            trailing: Icon(Icons.arrow_circle_up_sharp),
            title: Text('Family Room',style: TextStyle(color: Colors.orange) ,),
            subtitle: Text('A room assigned to three or four people',style: TextStyle(color: Colors.black),),
            leading: Image.asset('assets/IMG_triple.JPG'),
    )),
    
    TextButton(style:TextButton.styleFrom(
      backgroundColor: Colors.orange,foregroundColor: Colors.white
    ) ,
      
      
      onPressed: () {
                        Navigator.pop(context, MaterialPageRoute(builder: (_)=>MyHomePage()));}, child: Text('Next'),)
                           
    
    
    
    
    ],),
      
      
      
      
      
      ) ;



      
  }
}