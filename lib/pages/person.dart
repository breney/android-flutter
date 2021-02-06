import 'dart:convert';


import 'package:http/http.dart';
import 'package:ricandmorty/data_objects/person.dart';
import 'package:ricandmorty/data_objects/person_stats.dart';

import '../globals.dart';

class PersonService {
  // ignore: deprecated_member_use
  List<Person> persons = List<Person>();
  PersonStats statistics;
  Person personActual;

  Future<void> getPersons() async
  {
    if(this.persons.isNotEmpty) return;

    String route = Globals.apiUrl;
    Response response = await get(route);

    Map rawData = jsonDecode(response.body);
    List<dynamic> nameData = rawData['results'];
    this.persons.clear();
    for (var i = 0; i < nameData.length; i++)
    {
      Person nome = Person(name: nameData[i]['name'],image: nameData[i]['image']);
      this.persons.add(nome);
    }
  }
  Future<void> getStatistics() async
  {

    if (this.personActual == null) return;

    String route = Globals.apiUrl + "/?name=" + this.personActual.name;
    Response response = await get(route);

    Map rawData = jsonDecode(response.body);
    List<dynamic> statisticsData = rawData['results'];

    Map stats = statisticsData[0];

    this.statistics = PersonStats(
        name: stats['name'],
        image: stats['image'],
        status: stats['status'],
        species: stats['species'],
        gender: stats['gender']
    );
  }

}