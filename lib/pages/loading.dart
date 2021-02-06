
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../globals.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> setupService() async
  {
    await Globals.service.getPersons();
    await Globals.service.getStatistics();
    Navigator.pushReplacementNamed(context, Globals.nextRoute);
  }

  @override
  void initState() {
    super.initState();
    this.setupService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Center(
        child: SpinKitDualRing(
          color: Colors.tealAccent[400],
          size: 120,
        ),
      ),
    );
  }
}