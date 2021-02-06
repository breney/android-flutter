
import 'package:flutter/material.dart';
import 'package:ricandmorty/pages/loading.dart';
import 'package:ricandmorty/pages/person_stats.dart';
import 'package:ricandmorty/pages/set_persons.dart';

import 'globals.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Loading(),
      '/Person': (context) => SetPerson(),
      '/Statistics': (context) => PersonStatistics(),
      '/LoadStatistics': (context) {
        Globals.nextRoute = '/Statistics';
        return Loading();
      }
    },
  ));
}
