
import 'package:flutter/material.dart';
import 'package:ricandmorty/data_objects/person.dart';

class PersonCard extends StatelessWidget {
  final Person person;
  final Function showStats;

  PersonCard({this.person, this.showStats});

  @override

  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top:10,left: 10,right: 10,bottom: 4),
      color: Colors.lightBlueAccent[50],
      child: ListTile(
        title: Text(this.person.name),
        leading: Container(child: Image.network(this.person.image),  height: 50,width: 50),
        onTap: showStats,
      ),
    );
  }
}
