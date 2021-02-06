
import 'package:flutter/material.dart';
import 'package:ricandmorty/widgets/StatisticsPerson.dart';

import '../globals.dart';

class PersonStatistics extends StatefulWidget {
  @override
  _PersonStatistics createState() => _PersonStatistics();
}

class _PersonStatistics extends State<PersonStatistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[300],
          title: Text(Globals.service.statistics.name),
        ),
        body: StatisticsPerson(statistics: Globals.service.statistics)
    );
  }
}