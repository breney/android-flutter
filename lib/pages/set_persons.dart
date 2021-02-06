
import 'package:flutter/material.dart';
import 'package:ricandmorty/data_objects/person.dart';
import 'package:ricandmorty/widgets/person_card.dart';

import '../globals.dart';

class SetPerson extends StatefulWidget {
  @override
  _SetPerson createState() => _SetPerson();
}

class _SetPerson extends State<SetPerson> {
  Future<void> showStats(Person person) async{

    Globals.service.personActual = person;
    await Globals.service.getStatistics();
    Navigator.pushNamed(context, '/LoadStatistics');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[300],
        title: Text("Ric and Morty"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: Globals.service.persons.length,
              itemBuilder: (context, index) =>

                  PersonCard(person: Globals.service.persons[index],
                      showStats: (){
                        this.showStats(Globals.service.persons[index]);
                      }),
            ),
          )
        ],
      ),
    );
  }
}