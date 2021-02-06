import 'package:flutter/material.dart';
import 'package:ricandmorty/data_objects/person_stats.dart';

class StatisticsPerson extends StatelessWidget {
  final PersonStats statistics;

  StatisticsPerson({this.statistics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),

                  child: Image.network(this.statistics.image),  height: 200,width: 200,
              ),
            ),
            Center(
              child: Text("Status : ${this.statistics.status}", style:TextStyle(letterSpacing: 2,fontSize: 20)),

            ),
            Center(
              child: Text("Species : ${this.statistics.species}",style:TextStyle(letterSpacing: 2,fontSize: 20)),
            ),
            Center(
              child: Text("Gender : ${this.statistics.gender}",style:TextStyle(letterSpacing: 2,fontSize: 20)),
            )
          ],
        )
     );
    }
}